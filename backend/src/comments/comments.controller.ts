import { Controller, Get, Post, Body, Patch, Param, Delete, Put } from '@nestjs/common';
import { CommentsService } from './comments.service';
import { CreateCommentDto } from './dto/create-comment.dto';

@Controller('comments')
export class CommentsController {
  constructor(private readonly commentsService: CommentsService) {}

  @Post()
  async create(@Body() createCommentDto: CreateCommentDto) {
    return await this.commentsService.createComment(createCommentDto);
  }

  @Get()
  async findAll() {
    return await this.commentsService.findAll(); 
  }

  @Get('post/:postId')
  async findCommentByPost(@Param('postId') postId: string) {
    return await this.commentsService.findCommentByPost(postId);
  }

  @Get('author/:author')
  async findCommentByAuthor(@Param('author') author: string) {
    return await this.commentsService.findCommentByAuthor(author);
  }

  @Put(':id')
  async updateComment(@Param('id') id: string, @Body() updateCommentDto: CreateCommentDto) {
    return await this.commentsService.updateComment(id, updateCommentDto);
  }

  @Delete(':id')
  async removeComment(@Param('id') id: string) {
    return await this.commentsService.removeComment(id);
  }
}
