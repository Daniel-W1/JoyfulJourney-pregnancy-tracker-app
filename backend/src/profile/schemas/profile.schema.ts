import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose'
import { Types } from 'mongoose'


export interface SocialMedia {
    name: string;
    link: string;
}

@Schema()
export class Profile {

    @Prop()
    firstName: string;

    @Prop()
    lastName: string

    @Prop({ required: true })
    userName: string

    @Prop()
    profilePicture: string

    @Prop()
    bio: string;

    @Prop()
    followers: string[]

    @Prop()
    following: string[]

    @Prop()
    comments: string[];

    @Prop()
    posts: string[];

    @Prop()
    socialMedia: string[];
}

export const ProfileSchema = SchemaFactory.createForClass(Profile);