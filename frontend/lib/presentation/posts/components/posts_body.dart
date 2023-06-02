import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_state.dart';

import 'package:frontend/domain/post/post.dart';
import 'package:frontend/infrastructure/profile/profile_api.dart';
import 'package:frontend/infrastructure/profile/profile_repository.dart';
import 'package:frontend/presentation/core/constants/assets.dart';
import 'package:frontend/presentation/core/constants/color.dart';
import '../../../application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import '../../../presentation/core/constants/color.dart';
import '../../core/Themes/light_theme.dart';
import 'post_item.dart';

class PostsBody extends StatefulWidget {
  const PostsBody({super.key});

  @override
  State<PostsBody> createState() => _PostsBodyState();
}

class _PostsBodyState extends State<PostsBody> {
  @override
  void initState() {
    BlocProvider.of<PostListBloc>(context).add(PostListEventLoad());
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<PostListBloc, PostListState>(
      listenWhen: (previousState, state) => previousState != state,
      listener: (context, state) {
        if (state is PostListStateFailure) {
          print(state.toString());
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('There has been an error'),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 2),
            ),
          );
          
        } else if (state is PostListStateAddSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Post added'),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 2),
            ),
          );
          BlocProvider.of<PostListBloc>(context).add(PostListEventLoad());
        } else if (state is PostListStateDeleted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Post Deleted'),
              backgroundColor: Colors.orange,
              duration: const Duration(seconds: 2),
            ),
          );
          BlocProvider.of<PostListBloc>(context).add(PostListEventLoad());
        }
      },
      builder: (context, state) {
        if (state is PostListStateLoading || state is PostListStateInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PostListStateSuccess) {
          List<PostDomain> posts = state.post.reversed.toList();

          return Column(
            children: [
              // app bar
              PostsAppBar(size: size),
              Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return BlocProvider(
                          create: (context) => ProfileBloc(profileRepositoryInterface: ProfileRepository(ProfileApi())),
                          child: PostItem(
                            size: size,
                            post: posts[index],
                          ),
                        );
                      }))
            ],
          );
        } else if (state is PostListStateFailure) {
          return const Center(
            child: Text("Error"),
          );
        } else {
          return const Center(
            child: Text(""),
          );
        }
      },
    );
  }
}

class PostsAppBar extends StatelessWidget {
  const PostsAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = LightTheme().getThemeData;
    return Container(
      height: 90,
      width: size.width,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          const Text(
            "Posts",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(Assets.assetsImagesWomanProfile),
          ),
        ],
      )),
    );
  }
}
