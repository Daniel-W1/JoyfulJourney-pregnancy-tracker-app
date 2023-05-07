import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { BabyService } from './baby.service';
import { Baby } from './entity/baby.entity';
import { createBabyDto } from './dto/create-baby-dto';
import { updateBabyDto } from './dto/update-baby-dto';

@Controller('baby')
export class BabyController {
  constructor(private readonly BabyService: BabyService) {}

  @Post()
  async create(@Body() createBabyDto: createBabyDto): Promise<Baby> {
    return await this.BabyService.create(createBabyDto);
  }

  @Get()
  async findAll(): Promise<Baby[]> {
    return await this.BabyService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id') id: string): Promise<Baby> {
    return await this.BabyService.findOne(id);
  }

  @Patch(':id')
  async update(@Param('id') id: string, @Body() updateBabyDto: updateBabyDto): Promise<Baby> {
    return await this.BabyService.update(id, updateBabyDto);
  }

  @Delete(':id')
  async remove(@Param('id') id: string): Promise<any> {
    return await this.BabyService.removeBaby(id);
  }
}