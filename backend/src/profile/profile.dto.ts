import { Types } from "mongoose";   
import { SocialMedia } from "src/schemas/profile.schema";
import { IsNotEmpty } from "class-validator";


export class ProfileDto{

    @IsNotEmpty()
    firstname: String[];

    lastname: String[]

    @IsNotEmpty()
    username: String[]

    image: String;
    bio: String;
    followers: String[];
    following: String[];
    comments: String[];
    posts: String[];
    socialMedia: String[];

}