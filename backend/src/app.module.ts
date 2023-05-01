import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ProfileModule } from './profile/profile.module';
import { PostModule } from './post/post.module';
import { CommentsModule } from './comments/comments.module';

@Module({
  imports: [ProfileModule, MongooseModule.forRoot('mongodb+srv://Leinad:Leinad@cluster0.ul4bqb4.mongodb.net/?retryWrites=true&w=majority'), PostModule, CommentsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
