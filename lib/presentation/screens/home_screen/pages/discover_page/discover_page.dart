import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/discover_page/discover_page_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DiscoverPageBloc>(context)
        .add(const InitializeDiscoverPage());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundScreenColor,
        automaticallyImplyLeading: false,
        title: vibeeLogo(size: 30),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.verified_rounded)),
        ],
      ),
      backgroundColor: backgroundScreenColor,
      body: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
        builder: (context, state) {
          return state.discoverResponse?.posts == null ||
                  state.discoverResponse!.posts!.isEmpty
              ? Center(child: vibeeText('No posts'))
              : ListView.builder(
                  itemCount: state.discoverResponse?.posts?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: PostWidget(
                        description:
                            state.discoverResponse?.posts?[index].description ??
                                '',
                        dpNetworkImageApiPath: state.discoverResponse
                            ?.posts?[index].createdBy?.profilePicture,
                        postNetworkImageUrl:
                            state.discoverResponse?.posts?[index].media,
                        profileName:
                            "${state.discoverResponse?.posts?[index].createdBy?.firstName} ${state.discoverResponse?.posts?[index].createdBy?.lastName}",
                        dateNTime:
                            state.discoverResponse?.posts?[index].createdAt,
                        place: state.discoverResponse?.posts?[index].location,
                        postId: state.discoverResponse!.posts![index].id!,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
