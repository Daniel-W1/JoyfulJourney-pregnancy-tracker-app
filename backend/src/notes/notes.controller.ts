import { Controller, Get, Post, Body, Patch, Param, Delete, Put, UseGuards } from '@nestjs/common';
import { NotesService } from './notes.service';
import { CreateNoteDto } from './dto/create-note.dto';
import { AuthGuard } from '@nestjs/passport';

@UseGuards(AuthGuard('jwt'))
@Controller('notes')
export class NotesController {
  constructor(private readonly notesService: NotesService) {}

  @Post()
  create(@Body() createNoteDto: CreateNoteDto) {

    console.log("createNoteDto: ", createNoteDto);
    return this.notesService.create(createNoteDto);
    
  }

  @Get()
  findAll() {
    return this.notesService.findAll();
  }

  @Get('user/:user_id')
  async findByUser(@Param('user_id') user_id: string) {
    
    var res =  await this.notesService.findByUser(user_id);
    console.log(res, 'res');
    return res;
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.notesService.findOne(id);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() updateNoteDto: CreateNoteDto) {
    return this.notesService.updateNote(id, updateNoteDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.notesService.removeNote(id);
  }
}
