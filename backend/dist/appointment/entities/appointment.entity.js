"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppointmentSchema = void 0;
const mongose = require("mongoose");
exports.AppointmentSchema = new mongose.Schema({
    title: { type: String, required: true },
    description: { type: String, required: true },
    status: { type: String, required: true },
    date: { type: String, required: true },
    hour: { type: String, required: true },
    minute: { type: String, required: true },
    gmt: { type: String, required: true }
}, { timestamps: true });
//# sourceMappingURL=appointment.entity.js.map