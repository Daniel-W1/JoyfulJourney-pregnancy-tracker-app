import { HttpStatus ,HttpException, Injectable, NotFoundException, ConflictException } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { User } from './entities/user.entity';
import { Model } from 'mongoose';
import { UserInterface } from './interfaces/user.interface';
import { InjectModel } from '@nestjs/mongoose';
import * as bcrypt from 'bcrypt'

@Injectable()
export class UserService {
  constructor(@InjectModel(User.name) private userModel: Model<UserInterface>) {}

  async checkUserName(userName: string) {
    let user = await this.userModel.findOne({ userName }, { password: 0 });
    if (!user) {
      return false;
    }
    return true;
  }

  async hashAndSave(user: UserInterface) {
    const salt = 10;
    let savedUser: UserInterface;
    let password: string = await bcrypt.hash(user.password, salt);
    user.password = password;
    savedUser = await user.save();
    return savedUser;
  }

  async findUserByUserName(userName: string) {
    let user: UserInterface;
    try {
      user = await this.userModel.findOne({ userName });
    } catch (err) {
      throw new NotFoundException('User Not Found');
    }

    return user;
  }

  async create(createUserDto: CreateUserDto) {
    
    try{
      let isUserNameUnique: boolean;
      isUserNameUnique = await this.checkUserName(createUserDto.username);

      if (isUserNameUnique) {
        throw new ConflictException('UserName already Exist');
      }
      const newUser = new this.userModel(createUserDto);

      return this.hashAndSave(newUser);

    } catch(error) {
        throw new Error(`Couldn't create user: ${error.message}`)
    }
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

  async update(id: string, updateUserDto: UpdateUserDto) {
    try {
      return this.userModel.findByIdAndUpdate(id, updateUserDto, { new: true }).exec();
    } catch (error) {
        throw error;
    }
  }

  async remove(id: string) {
    try {
      return this.userModel.deleteOne({ _id: id }).exec();
    } catch (error) {
        throw error;
    }

  }
}
