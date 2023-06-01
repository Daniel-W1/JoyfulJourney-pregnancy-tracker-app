import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreatePostDto } from './dto/create-post.dto';
import { UpdatePostDto } from './dto/update-post.dto';
import { InjectModel } from '@nestjs/mongoose';
import { Post } from './schema/post.schema';
import mongoose, { Model, Types, ObjectId } from 'mongoose';
import { PostInterface } from './interfaces/post.interface';
import { ProfileService } from 'src/profile/profile.service';
import { CommentsService } from 'src/comments/comments.service';

@Injectable()
export class PostService {
    constructor(
      @InjectModel(Post.name) private postModel: Model<Post>,
      private profileService: ProfileService,
      ) {}

    async create(createPostDto: CreatePostDto) : Promise<Post> {
        try{
            const newPost = new this.postModel(createPostDto);

            // update the profile
            const reqProfile = await this.profileService.findOne(createPostDto.author);
            if (reqProfile != null) {
              var profilePosts = reqProfile.posts;
              profilePosts.push(newPost.id.toString());
              const updatedProfile = await this.profileService.updateProfile(createPostDto.author, { posts: profilePosts});
            }

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
    
    async findPostByAuthor(author: string): Promise<Post[]> {
        try {
          const posts = await this.postModel.find({ author: author }).exec();
          console.log(posts, 'posts service');
          
          return posts;
        } catch (error) {
          throw new Error(`Failed to find post: ${error.message}`);
        }
    }
    
    async updatePost(id: string, updatePostDto: UpdatePostDto) {
      try {
        const updatedPost = await this.postModel.findByIdAndUpdate(id, updatePostDto, { new: true }).exec();
        return updatedPost;
      } catch(error) {
        return error;
      }
      }
    
    async changeLike(postId: string, profileId: string) {
        try {
            const post = await this.postModel.findById(postId).exec();
            const likes = post.likes;
            
            if (likes.includes(profileId)){
              var index = likes.indexOf(profileId);
              likes.splice(index, 1);
            } else {
              likes.push(profileId);
            }

            const update = {likes: likes}
            const updatedPost = await this.postModel.findByIdAndUpdate(postId, update, { new: true }).exec();
            
            return updatedPost;

        } catch (error) {
            throw error;
        }
    }
    
    async removePost(id: string) {
      try{
        const deletedPost = await this.postModel.findByIdAndDelete({ _id: id }).exec();

        // update the profile
        const reqProfile = await this.profileService.findOne(deletedPost.author);
        var profilePosts = reqProfile.posts;
        var index = profilePosts.indexOf(deletedPost._id.toString());
        if (index !== -1) {
          profilePosts.splice(index, 1);
        }
        const updatedProfile = this.profileService.updateProfile(deletedPost.author, { posts: profilePosts});

      } catch(error) {
        return error
      }
  }
}