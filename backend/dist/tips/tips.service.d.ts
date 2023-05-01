/// <reference types="mongoose/types/aggregate" />
/// <reference types="mongoose/types/callback" />
/// <reference types="mongoose/types/collection" />
/// <reference types="mongoose/types/connection" />
/// <reference types="mongoose/types/cursor" />
/// <reference types="mongoose/types/document" />
/// <reference types="mongoose/types/error" />
/// <reference types="mongoose/types/expressions" />
/// <reference types="mongoose/types/helpers" />
/// <reference types="mongoose/types/middlewares" />
/// <reference types="mongoose/types/indexes" />
/// <reference types="mongoose/types/models" />
/// <reference types="mongoose/types/mongooseoptions" />
/// <reference types="mongoose/types/pipelinestage" />
/// <reference types="mongoose/types/populate" />
/// <reference types="mongoose/types/query" />
/// <reference types="mongoose/types/schemaoptions" />
/// <reference types="mongoose/types/schematypes" />
/// <reference types="mongoose/types/session" />
/// <reference types="mongoose/types/types" />
/// <reference types="mongoose/types/utility" />
/// <reference types="mongoose/types/validation" />
/// <reference types="mongoose/types/virtuals" />
/// <reference types="mongoose/types/inferschematype" />
import { CreateTipDto } from './dto/create-tip.dto';
import { Model, Types } from 'mongoose';
import { Tips } from './entities/tip.entity';
export declare class TipsService {
    private readonly TopicModul;
    constructor(TopicModul: Model<Tips>);
    create(createTipDto: CreateTipDto): Promise<import("mongoose").Document<unknown, {}, Tips> & Omit<Tips & {
        _id: Types.ObjectId;
    }, never>>;
    findAll(): Promise<(import("mongoose").Document<unknown, {}, Tips> & Omit<Tips & {
        _id: Types.ObjectId;
    }, never>)[]>;
    findOne(id: string): Promise<import("mongoose").Document<unknown, {}, Tips> & Omit<Tips & {
        _id: Types.ObjectId;
    }, never>>;
    update(id: string, updateTipDto: CreateTipDto): Promise<Tips>;
    remove(id: string): Promise<any>;
}
