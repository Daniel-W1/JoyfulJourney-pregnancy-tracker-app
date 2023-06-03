import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose'
import { Types } from 'mongoose'
import { Role } from 'src/auth/roles.enum';

@Schema()
export class User {
    @Prop({required: true})
    profileId: string;

    @Prop({ required: true })
    userName: string;
    
    @Prop({ required: true })
    password: string;

    @Prop({ required: true })
    email: string;

    @Prop({ required: true})
    roles: Role[];
}

export const UserSchema = SchemaFactory.createForClass(User);