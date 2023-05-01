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
exports.TipsService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
let TipsService = class TipsService {
    constructor(TopicModul) {
        this.TopicModul = TopicModul;
    }
    async create(createTipDto) {
        try {
            const newTips = new this.TopicModul(createTipDto);
            const result = await newTips.save();
            return result;
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    async findAll() {
        return this.TopicModul.find().exec();
    }
    findOne(id) {
        return this.TopicModul.findOne().exec();
    }
    async update(id, updateTipDto) {
        try {
            return this.TopicModul.findByIdAndUpdate(id, updateTipDto, { new: true }).exec();
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    async remove(id) {
        return this.TopicModul.deleteOne({ _id: id }).exec();
    }
};
TipsService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)("Tip")),
    __metadata("design:paramtypes", [mongoose_2.Model])
], TipsService);
exports.TipsService = TipsService;
//# sourceMappingURL=tips.service.js.map