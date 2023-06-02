import { HttpException, HttpStatus, Injectable, NotFoundException } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose'
import { Model } from 'mongoose';
import { Profile } from 'src/profile/schemas/profile.schema';
import { ProfileDto } from './dto/profile.dto';
import { IProfile } from './profile.interface';
import { UpdateProfileDto } from './dto/update-profile.dto';

@Injectable()
export class ProfileService {

    constructor(
        @InjectModel(Profile.name) private ProfileModel: Model<IProfile>
    ) { }

    async findAll(): Promise<Profile[]> {
        return this.ProfileModel.find().exec();
    }

    async create(newProfile: ProfileDto): Promise<Profile> {
        try {
            const createdProfile = new this.ProfileModel(newProfile);
            return await createdProfile.save()
        } catch (error) {
            throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
        }
    }

    async createFirst(username: String) {
        try {
            const createdProfile = new this.ProfileModel({ userName: username });
            return await createdProfile.save()
        } catch (error) {
            throw new Error(error.message);
        }
    }

    async findByUser(userName: string) {
        try {
            const finder = { username: userName };
            return await this.ProfileModel.find(finder).exec();
        } catch (error) {
            throw new HttpException('Bad Request', HttpStatus.BAD_REQUEST);
        }
    }

    async findOne(id: string): Promise<Profile> {
        try {
            const profile = await this.ProfileModel.findById(id).exec();
            console.log(profile);
            return profile;
        } catch (error) {
            throw new NotFoundException('Profile Not Found');
        }

    }

    async updateProfile(id: string, updateProfileDto: UpdateProfileDto): Promise<Profile> {
        try {
            
            return this.ProfileModel.findByIdAndUpdate(id, updateProfileDto, { new: true }).exec();
        } catch (error) {
            throw new Error(`{error.message}`);
            
        }
    }

    async removeProfile(id: string): Promise<any> {
        try {
            return this.ProfileModel.deleteOne({ _id: id }).exec();
        } catch (error) {
            throw new Error(`{error.message}`);
        }
    }

}
