import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose'
import { Types } from 'mongoose'


export interface SocialMedia {
    name: string;
    link: string;
}

@Schema()
export class Profile {

    @Prop({ required: true })
    firstname: string;

    @Prop({ required: true })
    lastname: string

    @Prop({ required: true })
    username: string

    @Prop()
    image: string

    @Prop()
    bio: string;

    @Prop({ type: [Types.ObjectId], ref: 'User' })
    followers: Types.ObjectId[]

    @Prop({ type: [Types.ObjectId], ref: 'User' })
    following: Types.ObjectId[]

    @Prop({ type: [Types.ObjectId], ref: 'Comment' })
    comments: Types.ObjectId[];

    @Prop({ type: [Types.ObjectId], ref: 'Post' })
    posts: Types.ObjectId[];

    @Prop({ type: [{ name: String, link: String }] })
    socialMedia: SocialMedia[];
}

export const ProfileSchema = SchemaFactory.createForClass(Profile);