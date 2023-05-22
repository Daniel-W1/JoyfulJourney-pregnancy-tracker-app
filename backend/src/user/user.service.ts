import { HttpStatus ,HttpException, Injectable, ConflictException, BadRequestException, NotFoundException } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { User } from './entities/user.entity';
import { Model } from 'mongoose';
import { UserInterface } from './interfaces/user.interface';
import { InjectModel } from '@nestjs/mongoose';
import * as bcrypt from 'bcrypt';
import { ProfileService } from 'src/profile/profile.service';
import { Role } from 'src/auth/roles.enum';

@Injectable()
export class UserService {
  constructor(
    @InjectModel(User.name) private userModel: Model<UserInterface>,
    private profileService: ProfileService,
    ) {}

  async checkUsername(username: string) {
    let user = await this.userModel.findOne({ username }, { password: 0 });
    if (!user) {
      return false;
    }
    return true;
  }

  async hashAndSave(user: UserInterface) {
    const salt = 11;
    let savedUser: UserInterface;
    let password: string = await bcrypt.hash(user.password, salt);
    user.password = password;
    savedUser = await user.save();
    return savedUser;
  }

  async create(createUserDto: CreateUserDto) {
      let newUser = new this.userModel({...createUserDto, roles: [ Role.User ]});
      let savedUser: UserInterface;
      let isUserNameUnique: boolean;

      isUserNameUnique = await this.checkUsername(newUser.username);
      if (isUserNameUnique) {
        throw new ConflictException('UserName already Exist');
      } else {
        try {
          let newProfile = await this.profileService.createFirst(createUserDto.username);
          newUser.profileId = newProfile._id;

          savedUser = await this.hashAndSave(newUser);
        } catch (err) {
          throw new BadRequestException('Bad Request');
        }
      }
      
      if (!savedUser) {
        throw new BadRequestException('Bad Request');
      }
      return savedUser;
  }

  async findAll() : Promise<User[]> {
    try{
        return this.userModel.find().exec();

    } catch(error) {
        throw new Error(error.message);
    }
    
  }

  async findOne(id: string) {
    try {
      const user = await this.userModel.findById(id).exec();

      if (!user) {
        throw new HttpException('User not found', HttpStatus.NOT_FOUND);
      }

      return user;

    } catch (error) {
      return error;
    }
  }

  async findOneByUsername(username: string) {
    let user;
    try {
      user = await this.userModel.findOne({ username });
      console.log(user);
      console.log(username);
    } catch (err) {
      throw new NotFoundException('User Not Found');
    }

    return user;
  }

  async update(id: string, updateUserDto: UpdateUserDto) {
    let updatedUser;
    try {
      updatedUser = await this.userModel.findByIdAndUpdate(updateUserDto);
      updatedUser = await this.hashAndSave(updatedUser);
    } catch (err) {
      throw new NotFoundException('User Not Found Exception');
    }
    return updatedUser;
  }

  remove(id: string) {
    try {
      return this.userModel.deleteOne({ _id: id }).exec();
    } catch (error) {
        throw error;
    }

  }
}
