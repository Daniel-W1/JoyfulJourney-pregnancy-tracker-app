import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { PostService } from './post.service';
import { PostController } from './post.controller';
import { Post, PostSchema } from './schema/post.schema';
import { CommentsModule } from 'src/comments/comments.module';
import { ProfileModule } from 'src/profile/profile.module';

@Module({
    imports: [
        MongooseModule.forFeature([{ name: Post.name, schema: PostSchema }]),
        ProfileModule
      ],
      controllers: [PostController],
      providers: [PostService],
      exports: [PostService]
})
export class PostModule {}
