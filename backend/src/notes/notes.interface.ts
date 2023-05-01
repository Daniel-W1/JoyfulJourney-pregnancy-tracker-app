import { Document } from 'mongoose';
import { Types } from 'mongoose';

export interface INote extends Document {
    title: string;
    body: string;
    user_id: Types.ObjectId;
}