import { Document } from 'mongoose';
import { Types } from 'mongoose';
import { SocialMedia } from 'src/schemas/profile.schema';
export interface IProfile extends Document {
    firstname: string;
    lastname: string;
    username: string;
    image: string;
    bio: string;
    followers: Types.ObjectId[];
    following: Types.ObjectId[];
    comments: Types.ObjectId[];
    posts: Types.ObjectId[];
    socialMedia: SocialMedia[];
}
