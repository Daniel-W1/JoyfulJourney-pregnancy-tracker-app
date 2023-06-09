import { Types, Document } from "mongoose";
import { Role } from "src/auth/roles.enum";

export interface UserInterface extends Document{  
    profileId: string;
    userName: string;
    password: string;
    email: string;
    roles: Role[];
}
