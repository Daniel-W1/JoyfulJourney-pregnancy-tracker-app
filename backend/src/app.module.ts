import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ProfileModule } from './profile/profile.module';
import { NotesModule } from './notes/notes.module';
import { TipsModule } from './tips/tips.module';
import { AppointmentModule } from './appointment/appointment.module'

@Module({
  imports: [ProfileModule, MongooseModule.forRoot('mongodb+srv://Leinad:Leinad@cluster0.ul4bqb4.mongodb.net/?retryWrites=true&w=majority'), NotesModule, TipsModule, AppointmentModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
