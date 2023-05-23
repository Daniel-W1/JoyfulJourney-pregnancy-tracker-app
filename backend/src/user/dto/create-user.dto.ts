import { IsNotEmpty } from 'class-validator';
import { Types } from 'mongoose';

export class CreateUserDto {
    @IsNotEmpty()
    username: string;

    @IsNotEmpty()
    password: string;

    @IsNotEmpty()
    email: string;

    @IsNotEmpty()
    role: string;

    profileId: string;
}
