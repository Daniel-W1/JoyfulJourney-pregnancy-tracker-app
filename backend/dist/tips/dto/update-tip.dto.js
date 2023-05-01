"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UpdateTipDto = void 0;
const mapped_types_1 = require("@nestjs/mapped-types");
const create_tip_dto_1 = require("./create-tip.dto");
class UpdateTipDto extends (0, mapped_types_1.PartialType)(create_tip_dto_1.CreateTipDto) {
}
exports.UpdateTipDto = UpdateTipDto;
//# sourceMappingURL=update-tip.dto.js.map