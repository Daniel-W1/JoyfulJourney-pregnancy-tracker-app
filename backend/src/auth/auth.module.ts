import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { JwtModule } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';
import { UserModule } from '../user/user.module';
import { JwtStrategy } from './jwt.auth';
import { ConfigService } from '@nestjs/config';
import { RolesGuard } from './role.guard';


@Module({
  imports: [
    JwtModule.register({
      secret: 'SECRET',
      signOptions: { expiresIn: '3600s' },
    }),
    PassportModule,
    UserModule
  ],
  controllers: [AuthController],
  providers: [
   RolesGuard,
   AuthService, 
   JwtStrategy, 
   ConfigService]
})
export class AuthModule {}