import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose'
import { Types } from 'mongoose'

@Schema()
export class User {
    @Prop()
    profileId: Types.ObjectId;

    @Prop({ required: true })
    username: string;
    
    @Prop({ required: true })
    password: string;

    @Prop({ required: true })
    email: string;

    @Prop({ required: true })
    role: string;
}

export const UserSchema = SchemaFactory.createForClass(User);