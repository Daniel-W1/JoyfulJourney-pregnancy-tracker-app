import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { CommentsService } from './comments.service';
import { CreateCommentDto } from './dto/create-comment.dto';

@Controller('comments')
export class CommentsController {
  constructor(private readonly commentsService: CommentsService) {}

  @Post()
  async create(@Body() createCommentDto: CreateCommentDto) {
    return this.commentsService.createComment(createCommentDto);
  }

  @Get('/post')
  async findCommentByPost(@Body() postId: string) {
    return this.commentsService.findCommentByPost(postId);
  }

  @Get('/author')
  async findCommentByAuthor(@Body() author: string) {
    return this.commentsService.findCommentByAuthor(author);
  }

  @Delete(':id')
  async removeComment(@Param('id') id: string) {
    return this.commentsService.removeComment(id);
  }
}
