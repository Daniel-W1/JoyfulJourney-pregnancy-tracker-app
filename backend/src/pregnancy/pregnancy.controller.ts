import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { PregnancyService } from './pregnancy.service';
import { Pregnancy } from './entities/pregnancy.entities';
import { createPregnancyDto } from './dto/create-pregnancy.dto';
import { updatePregnancyDto } from './dto/update-pregnancy.dto';

@Controller('pregnancy')
export class PregnancyController {
  constructor(private readonly pregnancyService: PregnancyService) {}

  @Post()
  async create(@Body() createPregnancyDto: createPregnancyDto): Promise<Pregnancy> {
    return await this.pregnancyService.create(createPregnancyDto);
  }

  @Get()
  async findAll(): Promise<Pregnancy[]> {
    return await this.pregnancyService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id') id: string): Promise<Pregnancy> {
    return await this.pregnancyService.findOne(id);
  }

  @Patch(':id')
  async update(@Param('id') id: string, @Body() updatePregnancyDto: updatePregnancyDto): Promise<Pregnancy> {
    return await this.pregnancyService.update(id, updatePregnancyDto);
  }

  @Delete(':id')
  async remove(@Param('id') id: string): Promise<any> {
    return await this.pregnancyService.removePregnancy(id);
  }
}