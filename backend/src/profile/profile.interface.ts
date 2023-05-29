import { Document } from 'mongoose';

export interface IProfile extends Document {
    firstName: string;

    lastName: string;
    userName: string;

    profilePicture: string;

    bio: string;

    followers: string[];
    following: string[];

    comments: string[];

    posts: string[];

    socialMedia: string[]   ;
}