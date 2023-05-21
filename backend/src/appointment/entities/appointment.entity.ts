import * as mongose from 'mongoose'

export const AppointmentSchema = new mongose.Schema({
    title: { type: String, required: true},
    description: { type: String, required: true},
    status: { type: String, required: true},
    date: { type: String, required: true},
    hour: { type: String, required: true},
    minute: { type: String, required: true},
    gmt: { type: String, required: true}

}, {timestamps:true})

export interface Appointment {
    id: string;
    title: string;
    description: string;
    status: string;
    date: string;
    hour: string;
    minute: string;
    gmt: string;

}
