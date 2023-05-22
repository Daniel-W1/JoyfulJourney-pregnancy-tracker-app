import { IsNotEmpty } from "class-validator";
import mongoose from "mongoose";

export class CreateCommentDto {
    @IsNotEmpty()
    author: string;

    @IsNotEmpty()
    body: string;

    @IsNotEmpty()
    postId: string;
}
