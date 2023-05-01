import { Injectable } from '@nestjs/common';
import { CreateCommentDto } from './dto/create-comment.dto';

@Injectable()
export class CommentsService {
  create(createCommentDto: CreateCommentDto) {
    return 'This action adds a new comment';
  }

  findAll() {
    return `This action returns all comments`;
  }

  findOne(id: number) {
    return `This action returns a #${id} comment`;
  }

  remove(id: number) {
    return `This action removes a #${id} comment`;
  }
}
