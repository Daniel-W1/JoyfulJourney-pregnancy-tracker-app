import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';
import {Types} from 'mongoose';
import { Pregnancy} from 'src/Pregnancy/entities/pregnancy.entities';
import { string } from 'yargs';


// export const BabySchema = new mongoose.Schema({
//   pregID: { type: Types.ObjectId, ref: Pregnancy },
//   babyId: { type: String, required: true },
//   week: {type:Number, required:true},
//   sizeImageUrl{type:String, required:true}

// )}

@Schema()
export class Baby{
  @Prop({ type: String })
  pregID: String;

  @Prop({ required: true })
  babyId: String;

  @Prop({ required: true })
  week: number;

  @Prop({ required: true })
  sizeImageUrl: string;
}

export const BabySchema = SchemaFactory.createForClass(Baby);