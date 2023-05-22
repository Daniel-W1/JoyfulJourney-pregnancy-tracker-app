import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ProfileModule } from './profile/profile.module';
import { NotesModule } from './notes/notes.module';
import { UserModule } from './user/user.module';
import { AuthModule } from './auth/auth.module';
import { ConfigModule } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { AuthController } from './auth/auth.controller';
import { AuthService } from './auth/auth.service';

@Module({
  imports: [
    ProfileModule, 
    MongooseModule.forRoot('mongodb+srv://Leinad:Leinad@cluster0.ul4bqb4.mongodb.net/?retryWrites=true&w=majority'), 
    NotesModule, 
    UserModule, 
    AuthModule,
    ConfigModule.forRoot({
      isGlobal: true,
      load: [],
    }),
  ],
  controllers: [AppController, AuthController],
  providers: [AppService, AuthService, JwtService],
})
export class AppModule { }
