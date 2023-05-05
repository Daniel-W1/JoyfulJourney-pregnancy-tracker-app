import { Module } from '@nestjs/common';
import { PregnancyService} from './pregnancy.service';
import { PregnancyController } from './pregnancy.controller';
import { MongooseModule } from '@nestjs/mongoose';
import { Pregnancy} from './entities/pregnancy.entities';
import { PregnancySchema} from './entities/pregnancy.entities';

@Module({
  imports: [
    MongooseModule.forFeature([{ name: Pregnancy.name, schema: PregnancySchema }]),
  ],
  controllers: [PregnancyController],
  providers: [PregnancyService]
})
export class PregnancyModule {}
