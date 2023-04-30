import { Model } from 'mongoose';
import { Profile } from 'src/schemas/profile.schema';
import { ProfileDto } from './profile.dto';
import { IProfile } from './profile.interface';
export declare class ProfileService {
    private ProfileModel;
    constructor(ProfileModel: Model<IProfile>);
    findAll(): Promise<Profile[]>;
    create(newProfile: ProfileDto): Promise<Profile>;
    findOne(id: string): Promise<Profile>;
    updateProfile(id: string, updateProfileDto: ProfileDto): Promise<Profile>;
    removeProfile(id: string): Promise<any>;
}
