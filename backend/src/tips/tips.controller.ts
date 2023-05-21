import { Controller, Get, Post, Body, Patch, Param, Delete, Put } from '@nestjs/common';
import { TipsService } from './tips.service';
import { CreateTipDto } from './dto/create-tip.dto';

@Controller('tips')
export class TipsController {
  constructor(private readonly tipsService: TipsService) {}

  @Post()
  async create(@Body() createTipDto: CreateTipDto) {
    return this.tipsService.create(createTipDto);
  }

  @Get()
  async findAll() {
    return this.tipsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.tipsService.findOne(id);
  }

  @Put(':id')
  async update(@Param('id') id: string, @Body() updateTipDto: CreateTipDto) {
    return this.tipsService.update(id, updateTipDto);
  }

  @Delete(":id")
  async remove(@Param('id') id: string) {
    await this.tipsService.remove(id);
    return {success: true}
  }
}
