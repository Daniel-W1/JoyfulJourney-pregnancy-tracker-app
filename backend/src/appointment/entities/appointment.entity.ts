import * as mongose from 'mongoose'

export const AppointmentSchema = new mongose.Schema({
    title: { type: String, required: true},
    body: { type: String, required: true},
    date: { type: String, required: true},
    time: { type: String, required: true},
    author: { type: String, required: true},

}, {timestamps:true})

export interface Appointment {
    id: string;
    title: string;
    body: string;
    date: string;
    time: string;
    author: string;

}
