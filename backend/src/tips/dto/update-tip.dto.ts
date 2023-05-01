import { PartialType } from '@nestjs/mapped-types';
import { CreateTipDto } from './create-tip.dto';

export class UpdateTipDto extends PartialType(CreateTipDto) {}
