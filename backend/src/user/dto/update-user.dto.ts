import { PartialType } from '@nestjs/mapped-types';
import { CreateUserDto } from './create-user.dto';
import { Types } from 'mongoose';
import { Role } from 'src/auth/roles.enum';

export class UpdateUserDto extends PartialType(CreateUserDto) {
    username: string;

    password: string;

    email: string;
    roles: Role[];
}
