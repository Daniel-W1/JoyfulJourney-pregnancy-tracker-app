import { Injectable } from '@nestjs/common';
import { CreateCommentDto } from './dto/create-comment.dto';
import { Comment } from './schema/comment.schema';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';

@Injectable()
export class CommentsService {
  constructor(@InjectModel(Comment.name) private commentModel: Model<Comment>){}

  async createComment(createCommentDto: CreateCommentDto) {
    try{
      const newComment = new this.commentModel(createCommentDto);
      return await newComment.save();

    } catch(error) { 
      throw new Error(`Couldn't create comment: ${error.message}`)

    }
  }

  async findCommentByPost(id: string) {
    try{
      const filter = {postId: id};
      const postComments = this.commentModel.find(filter);
      return postComments;

    } catch(error) {
      throw new Error(`Couldn't find comment: ${error.message}`)

    }
  }

  async findCommentByAuthor(id: string) {
    try{
      const filter = {author: id};
      const userComments = this.commentModel.find(filter);
      return userComments;

    } catch(error) {
      throw new Error(`Couldn't find comment: ${error.message}`)

    }
  }

  removeComment(id: string) {
    return `This action removes a #${id} comment`;
  }
}
