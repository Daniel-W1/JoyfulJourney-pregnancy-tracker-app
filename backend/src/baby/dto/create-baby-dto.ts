import { IsString,IsNumber, IsNotEmpty } from 'class-validator';
import { Pregnancy} from 'src/pregnancy/entities/pregnancy.entities';
import {Types} from 'mongoose';


export class createBabyDto {
  @IsNotEmpty()
  @IsNumber()
  week: number;
  
  @IsNotEmpty()
  @IsString()
  sizeImageUrl: string;

  pregnancy:string;
}