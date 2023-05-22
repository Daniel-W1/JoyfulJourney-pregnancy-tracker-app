import { IsNotEmpty } from 'class-validator';
import mongoose, { Types } from 'mongoose';

export class CreatePostDto {
  @IsNotEmpty()
  author: mongoose.Schema.Types.ObjectId;

  @IsNotEmpty()
  body: string;

  likes: [string];

  comments: [string];
}
