import { IsNotEmpty } from "class-validator";
import { Types } from "mongoose"

export class CreateNoteDto {
    @IsNotEmpty()
    title:string;

    @IsNotEmpty()
    body:string;

    @IsNotEmpty()
    author: string;
}

