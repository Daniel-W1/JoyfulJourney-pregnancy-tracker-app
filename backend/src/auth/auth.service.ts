import { ForbiddenException, HttpCode, HttpStatus, Injectable } from '@nestjs/common';
import { UserService } from 'src/user/user.service';
import { JwtService } from '@nestjs/jwt';
import { ConfigService } from '@nestjs/config';
import { CreateUserDto } from '../user/dto/create-user.dto';
import { compare } from 'bcrypt';
import { Role } from './roles.enum';

@Injectable()
export class AuthService {
  constructor (
    private userService: UserService,
    private jwtService: JwtService,
    private configService: ConfigService,
  ) {}

  @HttpCode(HttpStatus.CREATED)
  async signup(userDto: CreateUserDto) {
    try {
      const user = await this.userService.create(userDto);
      return user;
    } catch (e) {
      throw e;
    }
  }

  @HttpCode(HttpStatus.CREATED)
  async login(loginData) {
    // console.log(loginData, 'loginData');
    const { username, password } = loginData;
    // console.log(username);
    const user = await this.userService.findOneByUsername(username);
    // console.log(user);

    if (!user) {
      throw new ForbiddenException('Access Denied');
    }

    const match = await compare(password, user.password);

    if (!match) {
      console.log("passowrd don't match");

      throw new ForbiddenException('Access Denied');
    }

    console.log(user.role, 'user.role');
    const token = await this.getToken(username, user._id, user.roles);

    return { id: user._id, username: user.username, ...token };
  }

  async getToken(username: string, id: string, roles: Role[]) {
    const payload = { username, sub: id, roles: roles };
    const token = await this.jwtService.sign(payload, {
      secret: this.configService.get('JWT_SECRET'),
      expiresIn: 3600 * 24 * 7 * 2,
    });

    return { access_token: token };
  }
  async logout() {}
}
