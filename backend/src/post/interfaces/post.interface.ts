import { IsNotEmpty } from "class-validator";
import mongoose, { Types, Document } from "mongoose";

export interface PostInterface extends Document{
    author: string;
    body: string;
    comments: [string];
    likes: [string];

}