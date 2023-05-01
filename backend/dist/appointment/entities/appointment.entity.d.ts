import * as mongose from 'mongoose';
export declare const AppointmentSchema: mongose.Schema<any, mongose.Model<any, any, any, any, any, any>, {}, {}, {}, {}, {
    timestamps: true;
}, {
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    date: string;
    title: string;
    description: string;
    status: string;
    hour: string;
    minute: string;
    gmt: string;
}, mongose.Document<unknown, {}, mongose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    date: string;
    title: string;
    description: string;
    status: string;
    hour: string;
    minute: string;
    gmt: string;
}>> & Omit<mongose.FlatRecord<{
    createdAt: NativeDate;
    updatedAt: NativeDate;
} & {
    date: string;
    title: string;
    description: string;
    status: string;
    hour: string;
    minute: string;
    gmt: string;
}> & {
    _id: mongose.Types.ObjectId;
}, never>>;
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
