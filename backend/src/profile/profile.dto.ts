import { Types } from "mongoose";   
import { SocialMedia } from "src/schemas/profile.schema";
import { IsNotEmpty } from "class-validator";


export class ProfileDto{

    @IsNotEmpty()
    firstname: string;

    lastname: string

    @IsNotEmpty()
    username: string

    image: string;

    bio: string;

    followers: Types.ObjectId[]

    following: Types.ObjectId[]

    comments: Types.ObjectId[];

    posts: Types.ObjectId[];

    socialMedia: SocialMedia[];

}