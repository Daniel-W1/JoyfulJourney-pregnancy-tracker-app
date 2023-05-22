import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { Pregnancy,PregnancyDocument} from './entities/pregnancy.entities';
import { createPregnancyDto } from './dto/create-pregnancy.dto';
import { updatePregnancyDto } from './dto/update-pregnancy.dto';
@Injectable()
export class PregnancyService {
  constructor(
    @InjectModel(Pregnancy.name) private pregnancyModel: Model<PregnancyDocument>) {}

  async create(createPregnancyDto: createPregnancyDto): Promise<Pregnancy> {
    try {
      const createdPregnancy = new this.pregnancyModel(createPregnancyDto);
      return await createdPregnancy.save();
    } catch (error) {
      throw new Error(`Error creating pregnancy: ${error}`);
    }
  }

  async findAll() : Promise<Pregnancy[]> {
    try {
      return await this.pregnancyModel.find().exec();
    } catch (error) {
      throw new Error(`Error finding all pregnancies: ${error}`);
    }
  }

  async findOne(id: string){
    try {
      const pregnancy = await this.pregnancyModel.findById(id).exec();
      if (!pregnancy) {
        throw new Error(`Pregnancy with id ${id} not found`);
      }
      return pregnancy;
    } catch (error) {
      throw new Error(`Error finding pregnancy with id ${id}: ${error}`);
    }
  }

  async update(id: string, updatePregnancyDto: updatePregnancyDto): Promise<Pregnancy> {
    try {
      const updatedPregnancy = await this.pregnancyModel.findByIdAndUpdate(id, updatePregnancyDto, {new: true});
      if (!updatedPregnancy) {
        throw new Error(`Pregnancy with id ${id} not found`);
      }
      return updatedPregnancy;
    } catch (error) {
      throw new Error(`Error updating pregnancy with id ${id}: ${error}`);
    }
  }

  async removePregnancy(id: string): Promise<any> {
    try {
      const deleted = await this.pregnancyModel.deleteOne({_id: id}).exec();
      if (deleted.deletedCount === 0) {
        throw new Error(`Pregnancy with id ${id} not found`);
      }
      return deleted;
    } catch (error) {
      throw new Error(`Error deleting pregnancy with id ${id}: ${error}`);
    }
  }
}