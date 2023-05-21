import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import mongoose, { Types, HydratedDocument } from 'mongoose';

@Schema()
export class Comment {
  @Prop({ required: true, type: String, ref: 'Profile' })
  author: string;

  @Prop({ required: true, type: String })
  body: string;

  @Prop({ required: true, type: String})
  postId: string;
}

export const CommentSchema = SchemaFactory.createForClass(Comment);