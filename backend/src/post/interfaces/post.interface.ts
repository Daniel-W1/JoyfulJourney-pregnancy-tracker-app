import { IsNotEmpty } from "class-validator";
import mongoose, { Types, Document } from "mongoose";

export interface PostInterface extends Document{
    author: mongoose.Schema.Types.ObjectId;
    body: string;
    comments: [string];
    likes: [mongoose.Schema.Types.ObjectId];

}