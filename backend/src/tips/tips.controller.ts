import { Controller, Get, Post, Body, Patch, Param, Delete, Put, UseGuards } from '@nestjs/common';
import { TipsService } from './tips.service';
import { CreateTipDto } from './dto/create-tip.dto';
import { AuthGuard } from '@nestjs/passport';
import { Roles } from 'src/auth/roles.decorator';
import { Role } from 'src/auth/roles.enum';

@UseGuards(AuthGuard('jwt'))
@Controller('tips')
export class TipsController {
  constructor(private readonly tipsService: TipsService) {}

  @Roles(Role.Admin)
  @Post()
  async create(@Body() createTipDto: CreateTipDto) {
    return this.tipsService.create(createTipDto);
  }

  @Get()
  async findAll() {
    return this.tipsService.findAll();
  }

  @Get('bytype/:type')
  async findByType(@Param('type') type: string) {
    return this.tipsService.findByType(type);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.tipsService.findOne(id);
  }

  @Roles(Role.Admin)
  @Put(':id')
  async update(@Param('id') id: string, @Body() updateTipDto: CreateTipDto) {
    return this.tipsService.update(id, updateTipDto);
  }

  @Roles(Role.Admin)
  @Delete(":id")
  async remove(@Param('id') id: string) {
    await this.tipsService.remove(id);
    return {success: true}
  }
}
