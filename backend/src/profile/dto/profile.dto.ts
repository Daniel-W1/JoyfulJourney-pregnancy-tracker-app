import { Types } from "mongoose";   
import { SocialMedia } from "src/profile/schemas/profile.schema";
import { IsNotEmpty } from "class-validator";


export class ProfileDto{

    @IsNotEmpty()
    firstName: String;

    lastName: String;

    @IsNotEmpty()
    userName: String;

    profilePicture: String;
    bio: String;
    followers: String[];
    following: String[];
    comments: String[];
    posts: String[];
    socialMedia: String[];

}