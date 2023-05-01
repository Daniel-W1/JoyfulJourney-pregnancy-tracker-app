"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CompleteTipsSchema = void 0;
const mongoose = require("mongoose");
exports.CompleteTipsSchema = new mongoose.Schema({
    title: { type: String, required: true },
    body: { type: String, required: true },
    type: { type: String, required: true },
});
//# sourceMappingURL=tip.entity.js.map