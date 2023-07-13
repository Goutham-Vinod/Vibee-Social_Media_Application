import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/messages_page/messages_page_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MessagesPageBloc>(context)
        .add(const MessagesPageEvent.initializeMessagePage());

    return BlocListener<MessagesPageBloc, MessagesPageState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showSnackBar(context: context, message: state.errorMessage);
        }
      },
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(width: 15),
                  vibeeLogo(size: 30),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.createGroupScreen1);
                    },
                    icon: const Icon(
                      Icons.group_add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 30),
              vibeeTextFormField(
                width: 330,
                hint: "Search",
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      vibeeText("Messages"),
                    ],
                  )
                ],
              ),
              Expanded(
                child: BlocBuilder<MessagesPageBloc, MessagesPageState>(
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.getAllConversationsResponse?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Material(
                              color: Colors.transparent,
                              child: vibeeListTile(
                                  title: state
                                              .getAllConversationsResponse?[
                                                  index]
                                              .isGroupChat ==
                                          true
                                      ? state
                                          .getAllConversationsResponse![index]
                                          .chatName
                                      : '${state.getAllConversationsResponse?[index].users?[0].firstName} ${state.getAllConversationsResponse?[index].users?[0].lastName}',
                                  subtitle: "sophia_123",
                                  suffixWidget: const Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                  ),
                                  iconSize: 10,
                                  iconColor: Colors.green,
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
                                    Navigator.pushNamed(
                                        context, RouteGenerator.chatScreen,
                                        arguments: state
                                            .getAllConversationsResponse?[index]
                                            .id);
                                  })),
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
