import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards, Req } from '@nestjs/common';
import { AuthService } from './auth.service';
import { Roles } from './roles.decorator';
import { AuthGuard } from '@nestjs/passport';
import { Request } from 'express';


@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('login')
  async login(@Body() body) {
    return await this.authService.login(body);
  }

  @Post('signup')
  async signup(@Body() body) {
    console.log(body, 'body');
    console.log('signup');
    
    return await this.authService.signup(body);
  }

  @Post('logout')
  async logout(@Body() body) {
    return await this.authService.logout();
  }
}