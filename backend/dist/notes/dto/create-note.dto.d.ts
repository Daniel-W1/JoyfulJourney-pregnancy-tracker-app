import { Types } from "mongoose";
export declare class CreateNoteDto {
    title: string;
    body: string;
    user_id: Types.ObjectId;
}
