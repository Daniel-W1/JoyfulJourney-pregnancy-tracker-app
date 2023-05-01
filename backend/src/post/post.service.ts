import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreatePostDto } from './dto/create-post.dto';
import { UpdatePostDto } from './dto/update-post.dto';
import { InjectModel } from '@nestjs/mongoose';
import { Post } from './schema/post.schema';
import mongoose, { Model, Types, ObjectId } from 'mongoose';
import { PostInterface } from './interfaces/post.interface';

@Injectable()
export class PostService {
    constructor(@InjectModel(Post.name) private postModel: Model<Post>) {}

    async create(createPostDto: CreatePostDto) : Promise<Post> {
        try{
            const newPost = new this.postModel(createPostDto);
            return await newPost.save();

        } catch(error) {
            throw new Error(`Couldn't create post: ${error.message}`)
        }
        
      }
    
    async findAll() : Promise<Post[]> {
        try{
            return this.postModel.find().exec();

        } catch(error) {
            throw new Error(error.message);
        }
        
      }
    
    async findOne(id: string): Promise<Post> {
        try {
          const post = await this.postModel.findById(id).exec();

          if (!post) {
            throw new Error('Post not found');
          }

          return post;

        } catch (error) {
          throw new Error(`Failed to find post: ${error.message}`);
        }
    }
    
    async updatePost(id: number, updatePostDto: UpdatePostDto) {
        return `This action updates a #${id} comment`;
      }
    
    async addLike(postId: string, profileId: string) {
        try {
            const post = await this.postModel.findById(postId).exec();
            const likes = post.likes;
            
            likes.push(profileId);

            const update = {likes: likes}
            const updatedPost = await this.postModel.findByIdAndUpdate(postId, update, { new: true }).exec();
            
            return updatedPost;

        } catch (error) {
            throw error;
        }
    }
    
    async removePost(id: string) {
      return this.postModel.deleteOne({ _id: id }).exec();
      }
}
