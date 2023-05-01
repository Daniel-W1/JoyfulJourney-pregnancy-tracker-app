import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose'
import { Types } from 'mongoose'


@Schema()
export class Note {

    @Prop({ required: true })
    title: string;

    @Prop({ required: true })
    body: string;

    @Prop({ required: true })
    user_id: Types.ObjectId;
}

export const NoteSchema = SchemaFactory.createForClass(Note);