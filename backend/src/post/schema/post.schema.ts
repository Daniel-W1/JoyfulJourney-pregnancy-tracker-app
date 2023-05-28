import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import mongoose, { Types, HydratedDocument } from 'mongoose';

@Schema()
export class Post {
  @Prop({ required: true, type: String, ref: 'Profile' })
  author: string;

  @Prop({ required: true, type: String })
  body: string;

  @Prop({ type: [String], ref: 'Profile' })
  likes: [string];

  @Prop({ type: [String], ref: 'Comments' })
  comments: [string];
}

export const PostSchema = SchemaFactory.createForClass(Post);
