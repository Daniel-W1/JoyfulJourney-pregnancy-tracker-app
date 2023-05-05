import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import {Types} from 'mongoose';
import { User } from 'src/user/entities/user.entity';
export type PregnancyDocument = Pregnancy & Document;
@Schema()
export class Pregnancy{
  @Prop({ required: true })
  pregID: Types.ObjectId;

  @Prop({ type: Types.ObjectId, ref: 'User' })
  userId: Types.ObjectId;

  @Prop({ required: true })
  dueDate: Date;

  @Prop({ required: true })
  currentWeek: number;
}

export const PregnancySchema = SchemaFactory.createForClass(Pregnancy);