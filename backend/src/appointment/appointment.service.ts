import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { InjectModel } from '@nestjs/mongoose';
import { Appointment } from './entities/appointment.entity';
import { Model } from 'mongoose';

@Injectable()
export class AppointmentService {
  constructor(
    @InjectModel('appointment') private readonly  appointmentModel: Model<Appointment>
    ){}



  async create(createAppointmentDto: CreateAppointmentDto) {
    try {
      const newAppointment = new this.appointmentModel(createAppointmentDto);
      const result = await newAppointment.save();
      return result;
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
    
  }

  async findAll() {
    try{
      return this.appointmentModel.find().exec();
    } catch(error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async findOne(id:  string): Promise<Appointment> {
    try{
      return this.appointmentModel.findById(id).exec();
    } catch(error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
    
  }

  async findByUser(user_id: string): Promise<Appointment[]> {
    try {
      const finder = {user_id: user_id};
      return this.appointmentModel.find(finder).exec();
    } catch(error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async update(id: string, updateAppointmentDto: UpdateAppointmentDto): Promise<Appointment> {
    try {
      return this.appointmentModel.findByIdAndUpdate(id, updateAppointmentDto, {new: true}).exec();
      } catch (error) {
        throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
      }
  }

  async remove(id: string): Promise<any> {
    try{
      return await this.appointmentModel.findByIdAndDelete({_id: id}).exec();
    } catch(error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
    
  }
}
