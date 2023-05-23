import { IsNotEmpty } from 'class-validator';
import mongoose, { Types } from 'mongoose';

export class CreatePostDto {
  @IsNotEmpty()
  author: string;

  @IsNotEmpty()
  body: string;

  likes: [string];

  comments: [string];
}
