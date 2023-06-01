import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateCommentDto } from './dto/create-comment.dto';
import { Comment } from './schema/comment.schema';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { PostService } from 'src/post/post.service';
import { ProfileService } from 'src/profile/profile.service';

@Injectable()
export class CommentsService {
  constructor(
    @InjectModel(Comment.name) private commentModel: Model<Comment>,
    private postService: PostService,
    private profileService: ProfileService
    ){}

  async createComment(createCommentDto: CreateCommentDto) {
    try{
      const newComment = new this.commentModel(createCommentDto);
      
      // update the post
      const reqPost = await this.postService.findOne(createCommentDto.postId);
      if (reqPost != null) {
        var postComments = reqPost.comments;
        postComments.push(newComment.id.toString());
        const updatedPost = await this.postService.updatePost(createCommentDto.postId, { comments: postComments });
      }

      
      // update the profile
      const reqProfile = await this.profileService.findOne(createCommentDto.author);
      if (reqProfile != null) {
        var profileComments = reqProfile.comments;
        profileComments.push(newComment.id.toString());
        const updatedProfile = await this.profileService.updateProfile(createCommentDto.author, { comments: profileComments});
      }

      return await newComment.save();

    } catch(error) { 
      // return new HttpException(error.message, HttpStatus.BAD_REQUEST);
      throw new Error(`Couldn't create comment: ${error.message}`)

    }
  }

  async findCommentByPost(id: string) {
    try{
      const filter = {postId: id};
      const postComments = await this.commentModel.find(filter);
      return postComments;

    } catch(error) {
      throw new Error(`Couldn't find comment: ${error.message}`)

    }
  }

  async findAll() {
    try {
      const comments = await this.commentModel.find();
      return comments;
    } catch (error) {
      throw new Error (`Couldn't find comments: ${error.message}`)
    }
  }

  async findCommentByAuthor(id: string) {
    try{
      const filter = {author: id};
      const userComments = await this.commentModel.find(filter);
      return userComments;

    } catch(error) {
      throw new Error(`Couldn't find comment: ${error.message}`)

    }
  }

  async updateComment(id: string, updateCommentDto: CreateCommentDto) {
    try{
      const filter = {_id: id};
      const updatedComment = await this.commentModel.findByIdAndUpdate(filter, updateCommentDto, {new: true}).exec();
      return updatedComment;
    } catch(error) {
      throw new Error(`Couldn't update comment: ${error.message}`);
    }
  }

  async removeComment(id: string) {
    const filter = {_id: id};
    try{
      const deletedComment = await this.commentModel.findByIdAndRemove(filter).exec();

      // update the post
      const reqPost = await this.postService.findOne(deletedComment.postId);
      var postComments = reqPost.comments;
      var index = postComments.indexOf(deletedComment._id.toString());
      if (index !== -1) {
        postComments.splice(index, 1);
      }
      const updatedPost = await this.postService.updatePost(deletedComment.postId, { comments: postComments });

      // update the profile
      const reqProfile = await this.profileService.findOne(deletedComment.author);
      var profileComments = reqProfile.comments;
      if (index !== -1) {
        profileComments.splice(index, 1);
      }
      const updatedProfile = this.profileService.updateProfile(deletedComment.author, { comments: profileComments});
      
  } catch(error) {
    throw new Error(`Couldn't delete comment: ${error.message}`);
  }
}
}
