import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/saved_posts_screen/saved_posts_screen_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

class SavedPostsScreen extends StatelessWidget {
  SavedPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SavedPostsScreenBloc>(context)
        .add(const SavedPostsScreenEvent.initializePage());
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      appBar: AppBar(
        title: const Text('Saved Posts'),
        backgroundColor: backgroundScreenColor,
      ),
      body: BlocBuilder<SavedPostsScreenBloc, SavedPostsScreenState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: 1,
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: BlocBuilder<SavedPostsScreenBloc, SavedPostsScreenState>(
                  builder: (context, state) {
                    return PostWidget(
                      description:
                          state.getSavedPostsResponse?[0]?.description ?? '',
                      postId: state.getSavedPostsResponse?[0]?.id ?? '',
                      dateNTime: state.getSavedPostsResponse?[0]?.updatedAt,
                      postNetworkImageUrl:
                          state.getSavedPostsResponse?[0]?.media,
                      dpNetworkImageApiPath: CommonVariables
                          .currentUserDetailsResponse?.profilePicture,
                      profileName:
                          "${CommonVariables.currentUserDetailsResponse?.firstName} ${CommonVariables.currentUserDetailsResponse?.lastName}",
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
