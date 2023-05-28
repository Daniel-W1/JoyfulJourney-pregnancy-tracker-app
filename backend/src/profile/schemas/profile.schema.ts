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

    @Prop({ type: [String], ref: 'User' })
    followers: string[]

    @Prop({ type: [String], ref: 'User' })
    following: string[]

    @Prop({ type: [String], ref: 'Comment' })
    comments: string[];

    @Prop({ type: [String], ref: 'Post' })
    posts: string[];

    @Prop({ type: [{ name: String, link: String }] })
    socialMedia: SocialMedia[];
}

export const ProfileSchema = SchemaFactory.createForClass(Profile);