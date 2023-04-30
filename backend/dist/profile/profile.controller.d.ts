import { ProfileService } from './profile.service';
import { ProfileDto } from './profile.dto';
export declare class ProfileController {
    private readonly profileService;
    constructor(profileService: ProfileService);
    findAll(): Promise<import("../schemas/profile.schema").Profile[]>;
    findOne(id: string): Promise<import("../schemas/profile.schema").Profile>;
    createProfile(profileDto: ProfileDto): Promise<import("../schemas/profile.schema").Profile>;
    update(id: string, updateProfileDto: ProfileDto): Promise<import("../schemas/profile.schema").Profile>;
    remove(id: string): Promise<{
        success: boolean;
    }>;
}
