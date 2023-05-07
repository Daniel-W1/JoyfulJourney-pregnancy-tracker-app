import { Module } from '@nestjs/common';
import {BabyService} from './baby.service';
import { BabyController } from './baby.controller';
import { MongooseModule } from '@nestjs/mongoose';
import { Baby} from './entity/baby.entity';
import { BabySchema} from './entity/baby.entity';

@Module({
  imports: [
    MongooseModule.forFeature([{ name: Baby.name, schema: BabySchema }]),
  ],
  controllers: [BabyController],
  providers: [BabyService]
})
export class BabyModule {}