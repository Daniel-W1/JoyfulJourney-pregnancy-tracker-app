import { PartialType } from '@nestjs/mapped-types';
import { CreateUserDto } from './create-user.dto';
import { Types } from 'mongoose';

export class UpdateUserDto extends PartialType(CreateUserDto) {
    username: string;

    password: string;

    email: string;
    role: string;

    profileId: Types.ObjectId;
}
