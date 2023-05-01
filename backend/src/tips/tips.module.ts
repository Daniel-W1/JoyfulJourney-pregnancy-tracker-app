import { Module } from '@nestjs/common';
import { TipsService } from './tips.service';
import { TipsController } from './tips.controller';
import { MongooseModule } from '@nestjs/mongoose';
import { CompleteTipsSchema } from './entities/tip.entity';

@Module({
  imports: [ MongooseModule.forFeature([{name: 'Tip' , schema: CompleteTipsSchema}]) ],
  controllers: [TipsController],
  providers: [TipsService]
})
export class TipsModule {}
