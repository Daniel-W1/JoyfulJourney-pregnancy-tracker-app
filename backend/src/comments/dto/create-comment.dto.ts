import { IsNotEmpty } from "class-validator";
import mongoose from "mongoose";

export class CreateCommentDto {
    @IsNotEmpty()
    author: mongoose.Schema.Types.ObjectId;

    @IsNotEmpty()
    body: string;

    postId: [string];
}
