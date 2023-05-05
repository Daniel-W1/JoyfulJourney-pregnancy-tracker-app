import { Type } from '@nestjs/common';
import * as mongoose from 'mongoose';
export declare class SchemaFactory {
    static createForClass<TClass = any, _TDeprecatedTypeArgument = any>(target: Type<TClass>): mongoose.Schema<TClass>;
}
