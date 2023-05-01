import * as mongoose from "mongoose";
export declare const CompleteTipsSchema: mongoose.Schema<any, mongoose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, mongoose.DefaultSchemaOptions, {
    type: string;
    title: string;
    body: string;
}, mongoose.Document<unknown, {}, mongoose.FlatRecord<{
    type: string;
    title: string;
    body: string;
}>> & Omit<mongoose.FlatRecord<{
    type: string;
    title: string;
    body: string;
}> & {
    _id: mongoose.Types.ObjectId;
}, never>>;
export interface Tips extends mongoose.Document {
    id: string;
    title: string;
    body: string;
    type: string;
}
