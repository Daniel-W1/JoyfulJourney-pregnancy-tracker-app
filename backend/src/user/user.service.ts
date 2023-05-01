import { HttpStatus ,HttpException, Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { User } from './entities/user.entity';
import { Model } from 'mongoose';
import { UserInterface } from './interfaces/user.interface';
import { InjectModel } from '@nestjs/mongoose';

@Injectable()
export class UserService {
  constructor(@InjectModel(User.name) private userModel: Model<UserInterface>) {}

  async create(createUserDto: CreateUserDto) {
    try{
      const newUser = new this.userModel(createUserDto);
      return await newUser.save();

    } catch(error) {
        throw new Error(`Couldn't create post: ${error.message}`)
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

  update(id: string, updateUserDto: UpdateUserDto) {
    try {
      return this.userModel.findByIdAndUpdate(id, updateUserDto, { new: true }).exec();
    } catch (error) {
        throw error;
    }
  }

  remove(id: string) {
    try {
      return this.userModel.deleteOne({ _id: id }).exec();
    } catch (error) {
        throw error;
    }

  }
}
