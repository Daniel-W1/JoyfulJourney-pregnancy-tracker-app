import { IsString, IsDate, IsNumber, IsNotEmpty } from 'class-validator';
import { User } from 'src/user/entities/user.entity';

export class updatePregnancyDto{
    @IsNotEmpty()
    @IsString()
    userId: User;
  
    @IsNotEmpty()
    @IsDate()
    dueDate: Date;
    
    @IsNotEmpty()
    @IsNumber()
    currentWeek: number;
}