import { Module } from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { AppointmentController } from './appointment.controller';
import { MongooseModule } from '@nestjs/mongoose';
import { AppointmentSchema } from './entities/appointment.entity';

@Module({
  imports: [ MongooseModule.forFeature([{name: 'appointment' , schema: AppointmentSchema}]) ],
  controllers: [AppointmentController],
  providers: [AppointmentService]
})
export class AppointmentModule {}
