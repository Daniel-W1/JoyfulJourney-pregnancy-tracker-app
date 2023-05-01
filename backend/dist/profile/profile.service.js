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
exports.ProfileService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const profile_schema_1 = require("../schemas/profile.schema");
let ProfileService = class ProfileService {
    constructor(ProfileModel) {
        this.ProfileModel = ProfileModel;
    }
    async findAll() {
        return this.ProfileModel.find().exec();
    }
    async create(newProfile) {
        try {
            const createdProfile = new this.ProfileModel(newProfile);
            return await createdProfile.save();
        }
        catch (error) {
            throw new common_1.HttpException('Bad Request', common_1.HttpStatus.BAD_REQUEST);
        }
    }
    async findOne(id) {
        try {
            const profile = this.ProfileModel.findById(id).exec();
            return profile;
        }
        catch (error) {
            throw new common_1.NotFoundException('Profile Not Found');
        }
    }
    async updateProfile(id, updateProfileDto) {
        try {
            return this.ProfileModel.findByIdAndUpdate(id, updateProfileDto, { new: true }).exec();
        }
        catch (error) {
            throw error;
        }
    }
    async removeProfile(id) {
        try {
            return this.ProfileModel.deleteOne({ _id: id }).exec();
        }
        catch (error) {
            throw error;
        }
    }
};
ProfileService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(profile_schema_1.Profile.name)),
    __metadata("design:paramtypes", [mongoose_2.Model])
], ProfileService);
exports.ProfileService = ProfileService;
//# sourceMappingURL=profile.service.js.map