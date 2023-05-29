import { Document } from 'mongoose';
import { Types } from 'mongoose';

export interface INote extends Document {
    title: string;
    body: string;
    author: string;
}