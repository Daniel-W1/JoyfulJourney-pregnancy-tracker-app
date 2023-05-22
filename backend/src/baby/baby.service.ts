import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { Baby,BabyDocument} from './entity/baby.entity';
import { createBabyDto } from './dto/create-baby-dto';
import { updateBabyDto } from './dto/update-baby-dto';

@Injectable()
export class BabyService {
  constructor(
    @InjectModel(Baby.name) private  BabyModel: Model<BabyDocument>) {}

  async create(createBabyDto: createBabyDto): Promise<Baby> {
    try {
      const createdBaby= new this.BabyModel(createBabyDto);
      return await createdBaby.save();
    } catch (error) {
      throw new Error(`Error creating baby: ${error}`);
    }
  }

  async findAll() : Promise<Baby[]> {
    try {
      return await this.BabyModel.find().exec();
    } catch (error) {
      throw new Error(`Error finding all babies: ${error}`);
    }
  }

  async findOne(id: string){
    try {
      const baby = await this.BabyModel.findById(id).exec();
      if (!baby) {
        throw new Error(`Baby with id ${id} not found`);
      }
      return baby;
    } catch (error) {
      throw new Error(`Error finding baby with id ${id}: ${error}`);
    }
  }

  async update(id: string, updateBabyDto: updateBabyDto): Promise<Baby> {
    try {
      const updatedBaby = await this.BabyModel.findByIdAndUpdate(id, updateBabyDto, {new: true});
      if (!updatedBaby) {
        throw new Error(`Baby with id ${id} not found`);
      }
      return updatedBaby;
    } catch (error) {
      throw new Error(`Error updating baby with id ${id}: ${error}`);
    }
  }

  async removeBaby(id: string): Promise<any> {
    try {
      const deleted = await this.BabyModel.deleteOne({_id: id}).exec();
      if (deleted.deletedCount === 0) {
        throw new Error(`Baby with id ${id} not found`);
      }
      return deleted;
    } catch (error) {
      throw new Error(`Error deleting baby with id ${id}: ${error}`);
    }
  }
}