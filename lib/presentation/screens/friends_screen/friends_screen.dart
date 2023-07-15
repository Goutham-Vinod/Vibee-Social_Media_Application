import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/friends_screen/friends_screen_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/profile_page_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FriendsScreenBloc>(context)
        .add(const FriendsScreenEvent.initializePage());
    return BlocListener<FriendsScreenBloc, FriendsScreenState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showSnackBar(
              context: context,
              message: state.errorMessage,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
        if (state.showMessage != null) {
          showSnackBar(context: context, message: state.showMessage);
        }
      },
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        appBar: AppBar(
          title: const Text('Friends'),
          backgroundColor: backgroundScreenColor,
        ),
        body: BlocBuilder<FriendsScreenBloc, FriendsScreenState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.friendsListResponse?.length ?? 0,
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return vibeeListTile(
                    title:
                        '${state.friendsListResponse?[index].firstName} ${state.friendsListResponse?[index].lastName}',
                    prefixWidget:
                        vibeeDp(image: AssetImage(CommonVariables.defaultDp)),
                    suffixWidget: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<FriendsScreenBloc>(context).add(
                              FriendsScreenEvent.unfriend(friendIndex: index));
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            side: MaterialStatePropertyAll(
                                BorderSide(color: Colors.red))),
                        child: vibeeText('UNFRIEND', color: Colors.red)),
                    onTap: () {
                      Navigator.pushNamed(context, RouteGenerator.profilePage,
                          arguments: ProfilePageArguments(
                              firstName:
                                  '${state.friendsListResponse?[index].firstName}',
                              lastName:
                                  '${state.friendsListResponse?[index].lastName}',
                              username:
                                  '${state.friendsListResponse?[index].username}',
                              isCurrentUserProfile: false));
                    });
              },
            );
          },
        ),
      ),
    );
  }
}
