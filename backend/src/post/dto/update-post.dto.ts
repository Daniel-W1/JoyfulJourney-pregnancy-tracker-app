import mongoose, { Types } from 'mongoose';

export class UpdatePostDto {
  author: mongoose.Schema.Types.ObjectId;

  body: string;

  likes: [string];

  comments: [mongoose.Schema.Types.ObjectId];
}
