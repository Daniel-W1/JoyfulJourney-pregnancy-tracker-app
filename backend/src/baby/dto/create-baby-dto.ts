import { IsString,IsNumber, IsNotEmpty } from 'class-validator';
import { Pregnancy} from 'src/pregnancy/entities/pregnancy.entities';
export class createBabyDto {
  @IsNotEmpty()
  @IsString()
  babyId: string;

  @IsNotEmpty()
  @IsString()
  pregId: Pregnancy;

  @IsNotEmpty()
  @IsDate()
  week: Number;
  
  @IsNotEmpty()
  @IsNumber()
  sizeImageUrl: String;
}