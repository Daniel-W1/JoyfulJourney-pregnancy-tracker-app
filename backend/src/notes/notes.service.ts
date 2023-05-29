import { HttpException, HttpStatus, Injectable, NotFoundException } from '@nestjs/common';
import { CreateNoteDto } from './dto/create-note.dto';
import { Note } from './entities/note.entity';
import { INote } from './notes.interface';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';

@Injectable()
export class NotesService {
  constructor(
    @InjectModel(Note.name) private NoteModel: Model<INote>
  ) { }

  async findAll(): Promise<Note[]> {
    return this.NoteModel.find().exec();
  }

  async create(newNote: CreateNoteDto): Promise<Note> {
    try {
      const createdNote = new this.NoteModel(newNote);

      const validation = createdNote.validateSync();
      if (validation) {
        console.log(validation, 'validation');
        throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
      }
      
      console.log(createdNote, 'createdNote');
      
      return await createdNote.save()
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async findOne(id: string): Promise<Note> {
    try {
      const note = this.NoteModel.findById(id).exec();
      return note;
    } catch (error) {
      throw new NotFoundException('Note Not Found');
    }

  }

  async findByUser(author: string) {
    try{
      const finder = {author: author};
      console.log(author, 'author');
      
      return await this.NoteModel.find(finder).exec();
    } catch (error) {
      throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
    }
  }

  async updateNote(id: string, updateCreateNoteDto: CreateNoteDto): Promise<Note> {
    try {

      return this.NoteModel.findByIdAndUpdate(id, updateCreateNoteDto, { new: true }).exec();
    } catch (error) {
      throw new Error(`{error.message}`);

    }
  }

  async removeNote(id: string): Promise<any> {
    try {
      return this.NoteModel.deleteOne({ _id: id }).exec();
    } catch (error) {
      throw new Error(`{error.message}`);
    }
  }
}
