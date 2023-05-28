import { Document } from 'mongoose';
import { Types } from 'mongoose';
import { SocialMedia } from 'src/profile/schemas/profile.schema';

export interface IProfile extends Document {
    firstName: string;

    lastName: string
    userName: string

    profilePicture: string;

    bio: string;

    followers: Types.ObjectId[]

    following: Types.ObjectId[]

    comments: Types.ObjectId[];

    posts: Types.ObjectId[];

    socialMedia: SocialMedia[];
}