import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/home_page/home_page_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomePageBloc>(context)
        .add(const HomePageEvent.initializeHomePage());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundScreenColor,
        automaticallyImplyLeading: false,
        title: vibeeLogo(size: 30),
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<HomeScreenBloc>(context).add(
                    const ChangeBottomNavBarIndex(
                        selectedBottomNavBarIndex: 5));
                // CommonVariables.bottomNavIndexNotifier.value = 5;
              },
              icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {
                // CommonVariables.bottomNavIndexNotifier.value = 6;
                BlocProvider.of<HomeScreenBloc>(context).add(
                    const ChangeBottomNavBarIndex(
                        selectedBottomNavBarIndex: 6));
              },
              icon: const Icon(Icons.verified_rounded)),
        ],
      ),
      backgroundColor: backgroundScreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            whatsOnYourMind(context),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                return state.getPostsResponse?.posts?.length == null
                    ? SizedBox(
                        height: 500,
                        child: Center(child: vibeeText('No posts to show')))
                    : ListView.builder(
                        itemCount: state.getPostsResponse?.posts?.length ?? 0,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: PostWidget(
                              description: state.getPostsResponse?.posts?[index]
                                      .description ??
                                  '',
                              dpNetworkImageApiPath: state.getPostsResponse
                                  ?.posts?[index].createdBy?.profilePicture,
                              postNetworkImageUrl:
                                  state.getPostsResponse?.posts?[index].media,
                              dateNTime: state
                                  .getPostsResponse?.posts?[index].createdAt,
                              place: state
                                  .getPostsResponse?.posts?[index].location,
                              profileName:
                                  '${state.getPostsResponse?.posts?[index].createdBy?.firstName} ${state.getPostsResponse?.posts?[index].createdBy?.lastName}',
                              postId: state.getPostsResponse!.posts![index].id!,
                            ),
                          );
                        },
                      );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget whatsOnYourMind(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: backgroundScreenColor2,
          height: 100,
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.account_circle_rounded,
            size: 50,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                // print("What's on your mind?");
                Navigator.of(context)
                    .pushNamed(RouteGenerator.createPostScreen);
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: vibeeText("Whats on your mind ?"),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
