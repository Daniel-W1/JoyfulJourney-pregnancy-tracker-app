import { PartialType } from '@nestjs/mapped-types';
import { ProfileDto } from './profile.dto';

export class UpdateProfileDto extends PartialType(ProfileDto) {}
