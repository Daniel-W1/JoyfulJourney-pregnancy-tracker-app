import * as mongose from 'mongoose'

export const AppointmentSchema = new mongose.Schema({
    title: { type: String, required: true},
    description: { type: String, required: true},
    status: { type: String, required: true},
    date: { type: String, required: true},
    time: { type: String, required: true},
    gmt: { type: String, required: true},
    user_id: { type: String, required: true},

}, {timestamps:true})

export interface Appointment {
    id: string;
    title: string;
    description: string;
    status: string;
    date: string;
    time: string;
    gmt: string;
    user_id: string;

}
