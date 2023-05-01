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
exports.AppointmentService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
let AppointmentService = class AppointmentService {
    constructor(appointmentModel) {
        this.appointmentModel = appointmentModel;
    }
    async create(createAppointmentDto) {
        try {
            const newAppointment = new this.appointmentModel(createAppointmentDto);
            const result = await newAppointment.save();
            return result;
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    async findAll() {
        return this.appointmentModel.find().exec();
    }
    async findOne(id) {
        return this.appointmentModel.findById(id).exec();
    }
    async update(id, updateAppointmentDto) {
        try {
            return this.appointmentModel.findByIdAndUpdate(id, updateAppointmentDto, { new: true }).exec();
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    remove(id) {
        return this.appointmentModel.findByIdAndDelete({ _id: id }).exec();
    }
};
AppointmentService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)('appointment')),
    __metadata("design:paramtypes", [mongoose_2.Model])
], AppointmentService);
exports.AppointmentService = AppointmentService;
//# sourceMappingURL=appointment.service.js.map