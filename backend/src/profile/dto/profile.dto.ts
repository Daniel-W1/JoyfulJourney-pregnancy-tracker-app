import { Types } from "mongoose";   
import { SocialMedia } from "src/profile/schemas/profile.schema";
import { IsNotEmpty } from "class-validator";


export class ProfileDto{

    @IsNotEmpty()
    firstName: string;

    lastName: string;

    @IsNotEmpty()
    userName: string;

    profilePicture: string;
    bio: string;
    followers: string[];
    following: string[];
    comments: string[];
    posts: string[];
    socialMedia: string[];

}