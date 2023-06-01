import { Body, Controller, Delete, Get, Param, Patch, Post, Put } from '@nestjs/common';
import { CreatePostDto } from './dto/create-post.dto';
import { PostService } from './post.service';
import { UpdatePostDto } from './dto/update-post.dto';

@Controller('post')
export class PostController {
    constructor(private readonly postService: PostService){}

    @Post()
    createPost(@Body() createPostDto: CreatePostDto) {
        return this.postService.create(createPostDto);
    }

    @Get()
    findAll() {
        return this.postService.findAll();
    }

    @Get('author/:author')
    findPostByAuthor(@Param('author') author: string) {
        console.log("controller", author);
        
        return this.postService.findPostByAuthor(author);
    }

    @Get(':id')
    findOne(@Param('id') id: string) {
        return this.postService.findOne(id);
    }

    @Patch('like/:id')
    changeLike(@Param('id') id: string, @Body() body) {
        return this.postService.changeLike(id, body.liker);
    }

    @Put(':id')
    updatePost(@Param('id') id: string, @Body() updateCommentDto: UpdatePostDto) {
        return this.postService.updatePost(id, updateCommentDto);
    }

    @Delete(':id')
    removePost(@Param('id') id: string) {
        return this.postService.removePost(id);
    }
}
