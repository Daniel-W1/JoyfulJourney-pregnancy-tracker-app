import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateTipDto } from './dto/create-tip.dto';
import { UpdateTipDto } from './dto/update-tip.dto';
import { InjectModel } from '@nestjs/mongoose';
import { Model, Types } from 'mongoose';
import {  Tips } from './entities/tip.entity';

@Injectable()
export class TipsService {
  constructor(
    @InjectModel("Tip") private readonly TopicModul: Model<Tips>
    ){}



  async create(createTipDto: CreateTipDto) {
    try {
      const newTips = new this.TopicModul(createTipDto);
      const result = await newTips.save();
      return result;
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
    
  }

  async findAll() {
    try {
      return await this.TopicModul.find().exec();
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async findOne(id: string) {
    try {
      return await this.TopicModul.findOne({_id: id}).exec();
    } catch(error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async findByType(type: string) {
    try {
      const finder = {type: type};
    return await this.TopicModul.find(finder).exec();
  } catch (error) {
    throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
  }
  }

  async update(id: string, updateTipDto: CreateTipDto):Promise<Tips> {
    try {
    return await this.TopicModul.findByIdAndUpdate(id, updateTipDto, {new: true}).exec();
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async remove(id: string): Promise<any>  {
    try {
      return await this.TopicModul.findByIdAndDelete(id).exec();
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }
}
