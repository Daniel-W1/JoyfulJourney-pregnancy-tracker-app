import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_bloc.dart';
import 'package:frontend/application/comment/bloc/comment_event.dart';
import 'package:frontend/application/comment/bloc/comment_state.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_bloc.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_events.dart';
import 'package:frontend/application/post/post_list/bloc/post_list_state.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import '../../application/profile/bloc/profile_bloc.dart';
import '../../application/profile/bloc/profile_state.dart';
import '../core/constants/assets.dart';
import 'components/commentcard.dart';
import 'components/editprofile.dart';
import 'components/links.dart';
import 'components/postcard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;
  late PostListBloc postListBloc;
  late CommentBloc commentBloc;
  late ProfileBloc profileBloc;

  var icons = ["facebook", "mail", "instagram", "link"];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    postListBloc = BlocProvider.of<PostListBloc>(context);
    commentBloc = BlocProvider.of<CommentBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    fetchPosts('64773ac7ba6d773eeec4120e');
    fetchComments('64773ac7ba6d773eeec4120e');
    profileBloc
        .add(ProfileEventGetProfile(profileId: '64773ac7ba6d773eeec4120e'));
  }

  Future<void> fetchPosts(String userId) async {
    print("fetching posts");
    postListBloc.add(PostListEventLoadByAuthor(userId));
  }

  Future<void> fetchComments(String userId) async {
    print("fetching comments");
    commentBloc.add(CommentEventGetUserComments(userId));
  }

  Uint8List? _decodedImage;

  Future<void> decodeImage(String base64Image) async {
    final bytes = base64Decode(base64Image);
    setState(() {
      _decodedImage = bytes;
    });

    print('decoded image $_decodedImage');
    print('-------------------------------------------------------');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileStateSuccess) {
              final profile = state.profile;
              decodeImage(profile.profilePicture);

              return NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Text(
                          '@${profile.userName}',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                          ),
                        ),
                        background: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blueAccent,
                              ],
                            ),
                            image: _decodedImage != null
                                ? DecorationImage(
                                    image:
                                        MemoryImage(_decodedImage as Uint8List),
                                    fit: BoxFit.cover,
                                  )
                                : DecorationImage(
                                    image: AssetImage(
                                        Assets.assetsImagesWomanProfile),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      )),
                  SliverAppBar(
                    expandedHeight: 150.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          '${profile.bio}',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      background: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.blueAccent,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        controller: tabController,
                        tabs: const [
                          Tab(
                            text: 'Posts',
                          ),
                          Tab(
                            text: 'Comments',
                          ),
                          Tab(
                            text: 'Likes',
                          ),
                        ],
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    pinned: true,
                  ),
                ],
                body: TabBarView(
                  controller: tabController,
                  children: [
                    BlocBuilder<PostListBloc, PostListState>(
                      builder: (context, state) {
                        if (state is PostListStateLoading) {
                          return Center(child: CircularProgressIndicator());
                        } else if (state is PostListStateSuccess) {
                          print(state.post);
                          print('these are the posts');

                          return ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            itemCount: state.post.length,
                            itemBuilder: (context, index) {
                              final post = state.post[index];
                              // Fetch profile based on author ID

                              return BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, profileState) {
                                  if (profileState is ProfileStateSuccess) {
                                    final profile = profileState.profile;
                                    return PostCard(
                                      author: profile.userName,
                                      description: post.body,
                                      likeCount: post.likes.length,
                                      commentCount: post.comments.length,
                                      imageUrl: profile.profilePicture,
                                    );
                                  } else {
                                    return Center(
                                        child: Text('Failed to load profile'));
                                  }
                                },
                              );
                            },
                          );
                        } else {
                          return Center(child: Text('Failed to load posts'));
                        }
                      },
                    ),
                    BlocBuilder<CommentBloc, CommentState>(
                      builder: (context, state) {
                        if (state is CommentStateLoading) {
                          return Center(child: CircularProgressIndicator());
                        } else if (state is CommentStateSuccessMultiple) {
                          print('these are the comments');
                          print(state.comments);
                          return ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            itemCount: state.comments.length,
                            itemBuilder: (context, index) {
                              final comment = state.comments[index];
                              return CommentCard(
                                description: comment.body,
                              );
                            },
                          );
                        } else {
                          return Center(child: Text('Failed to load comments'));
                        }
                      },
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
                        return Linkcard(icon: icons[index]);
                      }),
                    ),
                  ],
                ),
              );
            } else if (state is ProfileStateLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: Text('Failed to load profile'));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the edit profile page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditProfile()),
          );
        },
        child: Icon(Icons.edit),
      ),
    );
  }

  Future<void> fetchProfile(String profileId) async {
    profileBloc.add(ProfileEventGetProfile(profileId: profileId));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit Profile Page'),
      ),
    );
  }
}
