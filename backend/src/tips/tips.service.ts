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
      // console.log(result)
      return result;
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
    
  }

  async findAll() {
    return this.TopicModul.find().exec();
  }

  findOne(id: string) {
    return this.TopicModul.findOne().exec();
  }

  async update(id: string, updateTipDto: CreateTipDto):Promise<Tips> {
    try {
    return this.TopicModul.findByIdAndUpdate(id, updateTipDto, {new: true}).exec();
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async remove(id: string): Promise<any>  {
    return this.TopicModul.deleteOne({_id: id}).exec();
  }
}
