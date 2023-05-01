import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import mongoose, { Types, HydratedDocument } from 'mongoose';

@Schema()
export class Post {
  @Prop({ required: true, type: mongoose.Schema.Types.ObjectId, ref: 'Profile' })
  author: mongoose.Schema.Types.ObjectId;

  @Prop({ required: true, type: String })
  body: string;

  @Prop({ type: [String], ref: 'Profile' })
  likes: [string];

  @Prop({ type: [String], ref: 'Comments' })
  comments: [string];
}

export type CatDocument = HydratedDocument<Post>;

export const PostSchema = SchemaFactory.createForClass(Post);
