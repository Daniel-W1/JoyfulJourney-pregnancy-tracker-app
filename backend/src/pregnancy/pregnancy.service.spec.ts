import { Test, TestingModule } from '@nestjs/testing';
import { PregnancyService } from './pregnancy.service';
import { expect } from 'chai';

describe('PregnancyService', () => {
  let controller: PregnancyService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PregnancyService],
    }).compile();

    controller = module.get<PregnancyService>(PregnancyService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});