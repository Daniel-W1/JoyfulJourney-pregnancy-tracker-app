import * as mongoose from "mongoose";

export const CompleteTipsSchema = new mongoose.Schema({
    title: { type: String, required: true},
    body: { type: String, required: true},
    type: { type: String, required: true},

})

export interface Tips extends mongoose.Document {
    id: string;
    title: string;
    body: string;
    type: string;
    
}