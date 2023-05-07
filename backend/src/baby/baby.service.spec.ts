import { Test, TestingModule } from '@nestjs/testing';
import { BabyService } from './baby.service';

describe('BabyService', () => {
  let controller: BabyService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BabyService],
    }).compile();

    controller = module.get<BabyService>(BabyService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});