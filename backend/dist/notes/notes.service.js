"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.NotesService = void 0;
const common_1 = require("@nestjs/common");
const note_entity_1 = require("./entities/note.entity");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
let NotesService = class NotesService {
    constructor(NoteModel) {
        this.NoteModel = NoteModel;
    }
    async findAll() {
        return this.NoteModel.find().exec();
    }
    async create(newNote) {
        try {
            const createdNote = new this.NoteModel(newNote);
            return await createdNote.save();
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    async findOne(id) {
        try {
            const note = this.NoteModel.findById(id).exec();
            return note;
        }
        catch (error) {
            throw new common_1.NotFoundException('Note Not Found');
        }
    }
    async updateNote(id, updateCreateNoteDto) {
        try {
            return this.NoteModel.findByIdAndUpdate(id, updateCreateNoteDto, { new: true }).exec();
        }
        catch (error) {
            throw new Error(`{error.message}`);
        }
    }
    async removeNote(id) {
        try {
            return this.NoteModel.deleteOne({ _id: id }).exec();
        }
        catch (error) {
            throw new Error(`{error.message}`);
        }
    }
};
NotesService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(note_entity_1.Note.name)),
    __metadata("design:paramtypes", [mongoose_2.Model])
], NotesService);
exports.NotesService = NotesService;
//# sourceMappingURL=notes.service.js.map