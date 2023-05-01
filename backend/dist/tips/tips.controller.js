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
exports.TipsController = void 0;
const common_1 = require("@nestjs/common");
const tips_service_1 = require("./tips.service");
const create_tip_dto_1 = require("./dto/create-tip.dto");
let TipsController = class TipsController {
    constructor(tipsService) {
        this.tipsService = tipsService;
    }
    async create(createTipDto) {
        return this.tipsService.create(createTipDto);
    }
    async findAll() {
        return this.tipsService.findAll();
    }
    findOne(id) {
        return this.tipsService.findOne(id);
    }
    async update(id, updateTipDto) {
        return this.tipsService.update(id, updateTipDto);
    }
    async remove(id) {
        await this.tipsService.remove(id);
        return { success: true };
    }
};
__decorate([
    (0, common_1.Post)(),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_tip_dto_1.CreateTipDto]),
    __metadata("design:returntype", Promise)
], TipsController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], TipsController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)(':id'),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], TipsController.prototype, "findOne", null);
__decorate([
    (0, common_1.Put)(':id'),
    __param(0, (0, common_1.Param)('id')),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, create_tip_dto_1.CreateTipDto]),
    __metadata("design:returntype", Promise)
], TipsController.prototype, "update", null);
__decorate([
    (0, common_1.Delete)(":id"),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], TipsController.prototype, "remove", null);
TipsController = __decorate([
    (0, common_1.Controller)('tips'),
    __metadata("design:paramtypes", [tips_service_1.TipsService])
], TipsController);
exports.TipsController = TipsController;
//# sourceMappingURL=tips.controller.js.map