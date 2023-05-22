import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import {Types} from 'mongoose';
import { Pregnancy} from 'src/Pregnancy/entities/pregnancy.entities';
export type BabyDocument = Baby & Document;
@Schema()
export class Baby{
  @Prop({ type: Types.ObjectId, ref: Pregnancy })
  pregID: Types.ObjectId;

  @Prop({ required: true })
  babyId: Types.ObjectId;

  @Prop({ required: true })
  week: number;

  @Prop({ required: true })
  sizeImageUrl: string;
}

export const BabySchema = SchemaFactory.createForClass(Baby);