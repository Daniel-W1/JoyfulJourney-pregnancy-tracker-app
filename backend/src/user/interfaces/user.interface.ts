import { Types, Document } from "mongoose";

export interface UserInterface extends Document{  
    profileId: Types.ObjectId;
    username: string;
    password: string;
    email: string;
    role: string;
}
