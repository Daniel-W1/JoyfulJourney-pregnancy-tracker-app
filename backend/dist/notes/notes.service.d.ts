import { CreateNoteDto } from './dto/create-note.dto';
import { Note } from './entities/note.entity';
import { INote } from './notes.interface';
import { Model } from 'mongoose';
export declare class NotesService {
    private NoteModel;
    constructor(NoteModel: Model<INote>);
    findAll(): Promise<Note[]>;
    create(newNote: CreateNoteDto): Promise<Note>;
    findOne(id: string): Promise<Note>;
    updateNote(id: string, updateCreateNoteDto: CreateNoteDto): Promise<Note>;
    removeNote(id: string): Promise<any>;
}
