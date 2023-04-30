import { Controller, Get, Post, Put, Delete, Param, Body } from '@nestjs/common';
import { ProfileService } from './profile.service';
import { ProfileDto } from './profile.dto';

@Controller('profile')
export class ProfileController {

    constructor(private readonly profileService: ProfileService) { }

    @Get()
    async findAll() {        
        return await this.profileService.findAll();
    }

    @Get(":id")
    async findOne(@Param('id') id: string) {
        return await this.profileService.findOne(id);
    }

    @Post()
    async createProfile(@Body() profileDto: ProfileDto) {
        return await this.profileService.create(profileDto);
    }

    @Put(':id')
    async update(@Param('id') id: string, @Body() updateProfileDto: ProfileDto) {
        return this.profileService.updateProfile(id, updateProfileDto);
    }

    @Delete(':id')
    async remove(@Param('id') id: string) {
        await this.profileService.removeProfile(id);
        return { success: true };
    }
}
