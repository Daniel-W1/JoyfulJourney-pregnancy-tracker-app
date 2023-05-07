import { Test, TestingModule } from '@nestjs/testing';
import { BabyController } from './baby.controller';

describe('BabyController', () => {
  let controller: BabyController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BabyController],
    }).compile();

    controller = module.get<BabyController>(BabyController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});