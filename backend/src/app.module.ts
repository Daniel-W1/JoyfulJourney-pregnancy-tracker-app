import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ProfileModule } from './profile/profile.module';
import { PostModule } from './post/post.module';
import { CommentsModule } from './comments/comments.module';
import { NotesModule } from './notes/notes.module';
import { UserModule } from './user/user.module';
import { AuthModule } from './auth/auth.module';
import { AppointmentModule } from './appointment/appointment.module';
import { TipsModule } from './tips/tips.module';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    ProfileModule, 
    MongooseModule.forRoot('mongodb+srv://Leinad:Leinad@cluster0.ul4bqb4.mongodb.net/?retryWrites=true&w=majority'), 
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    PostModule, 
    CommentsModule, 
    NotesModule, 
    UserModule, 
    AuthModule, 
    AppointmentModule, 
    TipsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
