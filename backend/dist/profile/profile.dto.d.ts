import { Types } from "mongoose";
import { SocialMedia } from "src/schemas/profile.schema";
export declare class ProfileDto {
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
