import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/chat_screen/chat_screen_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/recieve_message_card.dart';
import 'package:vibee/presentation/common_widgets/sent_message_card.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final TextEditingController msgController = TextEditingController();
  final ScrollController chatScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    String chatId = ModalRoute.of(context)?.settings.arguments
        as String; // routeArgs - chat id - String

    BlocProvider.of<ChatScreenBloc>(context)
        .add(ChatScreenEvent.initializeScreen(chatId: chatId));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // chatScrollController.position.maxScrollExtent;
      chatScrollController
          .jumpTo(chatScrollController.position.maxScrollExtent);
    });

    return BlocConsumer<ChatScreenBloc, ChatScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        String? chatName;
        if (state.getMessageResponse?.isGroupChat != true) {
          chatName = state.getMessageResponse?.users?[0].id ==
                  CommonVariables.currentUserDetailsResponse?.id
              ? '${state.getMessageResponse?.users?[1].firstName} ${state.getMessageResponse?.users?[1].lastName}'
              : '${state.getMessageResponse?.users?[0].firstName} ${state.getMessageResponse?.users?[0].lastName}';
        } else if (state.getMessageResponse?.isGroupChat == true) {
          chatName = state.getMessageResponse?.chatName;
        }
        Widget? dpWidget;
        if (state.getMessageResponse?.isGroupChat == true) {
          if (state.getMessageResponse?.groupChatImage != null) {
            dpWidget = vibeeDp(
                image: NetworkImage(Config.getPictureUrl(
                    picturePath: state.getMessageResponse!.groupChatImage!)));
          }
        } else {
          if (state.getMessageResponse?.users?[0].id ==
              CommonVariables.currentUserDetailsResponse?.id) {
            if (state.getMessageResponse?.users?[1].profilePicture != null) {
              dpWidget = vibeeDp(
                  image: NetworkImage(Config.getPictureUrl(
                      picturePath: state
                          .getMessageResponse!.users![1].profilePicture!)));
            }
          } else if (state.getMessageResponse?.users?[0].profilePicture !=
              null) {
            dpWidget = vibeeDp(
                image: NetworkImage(Config.getPictureUrl(
                    picturePath:
                        state.getMessageResponse!.users![0].profilePicture!)));
          }
        }

        return Scaffold(
            backgroundColor: backgroundScreenColor,
            appBar: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: backgroundScreenColor,
              title: Row(
                children: [
                  dpWidget ??
                      vibeeDp(
                        image: AssetImage(CommonVariables.defaultDp),
                        height: 40,
                        width: 40,
                      ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vibeeText(chatName ?? '', // app bar title
                          size: 20),
                      vibeeText(state.isOnline == true ? "Online" : '',
                          size: 15),
                    ],
                  ),
                ],
              ),
              actions: [
                Visibility(
                    visible: state.getMessageResponse?.isGroupChat == true
                        ? false
                        : true,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteGenerator.callScreen,
                            arguments: chatId);
                      },
                      icon: Image.asset("assets/icons/Video Icon.png"),
                    )),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.getMessageResponse?.messages?.length ?? 0,
                    controller: chatScrollController,
                    itemBuilder: (context, index) {
                      if (state.getMessageResponse?.messages?[index].sender
                              ?.id ==
                          CommonVariables.currentUserDetailsResponse?.id) {
                        return SentMessageCard(
                            message: state.getMessageResponse?.messages?[index]
                                    .content ??
                                '');
                      } else {
                        return RecieveMessageCard(
                          message: state.getMessageResponse?.messages?[index]
                                  .content ??
                              '',
                          isGroupChat: state.getMessageResponse!.isGroupChat!,
                          senderName: state.getMessageResponse?.isGroupChat ==
                                  true
                              ? '${state.getMessageResponse?.messages?[index].sender?.firstName} ${state.getMessageResponse?.messages?[index].sender?.lastName}'
                              : null,
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: SizedBox(
                        child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.68,
                          child: TextField(
                            controller: msgController,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            cursorHeight: 30,
                            cursorColor: vibeePurple,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              BlocProvider.of<ChatScreenBloc>(context).add(
                                  ChatScreenEvent.sendMessage(
                                      message: msgController.text));
                              msgController.clear();
                              chatScrollController.jumpTo(chatScrollController
                                  .position.maxScrollExtent);
                            },
                            icon: const Icon(
                              Icons.send,
                              color: vibeePurple,
                            ))
                      ],
                    )),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
