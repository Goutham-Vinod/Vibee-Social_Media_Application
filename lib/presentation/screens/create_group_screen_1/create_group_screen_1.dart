import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/create_group_screen_1/create_group_screen_1_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class CreateGroupScreen1 extends StatelessWidget {
  const CreateGroupScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CreateGroupScreen_1Bloc>(context)
        .add(const CreateGroupScreen_1Event.initializePage());
    return BlocListener<CreateGroupScreen_1Bloc, CreateGroupScreen_1State>(
      listener: (context, state) {
        if (state.isGroupMembersAdded == true) {
          Navigator.of(context).pushNamed(RouteGenerator.createGroupScreen2,
              arguments: state.selectedGroupMembers);
        }
      },
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CreateGroupScreen_1Bloc>(context)
                .add(const CreateGroupScreen_1Event.navigateToNextScreen());
          },
          backgroundColor: vibeePurple,
          child: const Icon(Icons.arrow_forward_rounded),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  vibeeText("Create a group",
                      size: 25, fontWeight: FontWeight.w600),
                ],
              ),
              // const SizedBox(height: 30),
              // vibeeTextFormField(
              //   width: 330,
              //   hint: "Search",
              //   prefixIcon: const Icon(
              //     Icons.search,
              //     color: Colors.white,
              //     size: 25,
              //   ),
              // ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 35),
                  vibeeText("Select Participants")
                ],
              ),
              Expanded(
                child: BlocBuilder<CreateGroupScreen_1Bloc,
                    CreateGroupScreen_1State>(
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.friendsListResponse?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: vibeeListTile(
                              title:
                                  '${state.friendsListResponse?[index].firstName} ${state.friendsListResponse?[index].lastName}',
                              subtitle:
                                  "${state.friendsListResponse?[index].username}",
                              isSelected: state.selectedGroupMembersIndex
                                  .contains(index),
                              prefixWidget: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: vibeeDp(
                                  image: AssetImage(
                                      CommonVariables.testImagePath5),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              onTap: () {
                                BlocProvider.of<CreateGroupScreen_1Bloc>(
                                        context)
                                    .add(CreateGroupScreen_1Event.addFriend(
                                        friendId: '', // add friend id here
                                        selectedIndex: index));
                              }),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
