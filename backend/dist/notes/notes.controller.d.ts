import { NotesService } from './notes.service';
import { CreateNoteDto } from './dto/create-note.dto';
export declare class NotesController {
    private readonly notesService;
    constructor(notesService: NotesService);
    create(createNoteDto: CreateNoteDto): Promise<import("./entities/note.entity").Note>;
    findAll(): Promise<import("./entities/note.entity").Note[]>;
    findOne(id: string): Promise<import("./entities/note.entity").Note>;
    update(id: string, updateNoteDto: CreateNoteDto): Promise<import("./entities/note.entity").Note>;
    remove(id: string): Promise<any>;
}
