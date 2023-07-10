import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/notifications_page/notification_page_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/profile_page_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotificationPageBloc>(context)
        .add(const NotificationPageEvent.initializeNotificationPage());
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 15),
                vibeeLogo(size: 30),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    vibeeText(
                      "Notifications",
                      size: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: BlocBuilder<NotificationPageBloc, NotificationPageState>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        state.notificationsResponse?.notifications?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Material(
                          color: Colors.transparent,
                          child: notificationListTile(context, state, index),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget notificationListTile(context, NotificationPageState state, int index) {
    // create , post, friendRequest, acceptedRequest , live ,payment
    if (state.notificationsResponse?.notifications?[index].type == 'create') {
      return InkWell(
        onTap: () {
          print('created a post');
        },
        child: vibeeListTile(
          // common notifications list tile
          title:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName}",
          subtitle:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName} created a new post",

          iconSize: 10,
          iconColor: Colors.green,
          prefixWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: vibeeDp(
              image: AssetImage(CommonVariables.testImagePath7),
              height: 50,
              width: 50,
            ),
          ),
        ),
      );
    } else if (state.notificationsResponse?.notifications?[index].type ==
        'post') {
      return InkWell(
        onTap: () {
          print('post');
        },
        child: vibeeListTile(
          // common notifications list tile
          title:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName}",
          subtitle:
              "state.notificationsResponse?.notifications?[index] .interaction your post ",

          iconSize: 10,
          iconColor: Colors.green,
          prefixWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: vibeeDp(
              image: AssetImage(CommonVariables.testImagePath7),
              height: 50,
              width: 50,
            ),
          ),
        ),
      );
    } else if (state.notificationsResponse?.notifications?[index].type ==
        'friendRequest') {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteGenerator.profilePage,
              arguments: ProfilePageArguments(
                firstName: state.notificationsResponse?.notifications?[index]
                    .userId?.firstName,
                lastName: state.notificationsResponse?.notifications?[index]
                    .userId?.lastName,
                username: state.notificationsResponse?.notifications?[index]
                    .userId?.username,
                isCurrentUserProfile: false,
              ));
        },
        child: vibeeListTile(
          // common notifications list tile
          title:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName}",
          subtitle:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName} sent you a friend request.",

          iconSize: 10,
          iconColor: Colors.green,
          prefixWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: vibeeDp(
              image: AssetImage(CommonVariables.testImagePath7),
              height: 50,
              width: 50,
            ),
          ),
        ),
      );
    } else if (state.notificationsResponse?.notifications?[index].type ==
        'acceptedRequest') {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteGenerator.profilePage,
              arguments: ProfilePageArguments(
                firstName: state.notificationsResponse?.notifications?[index]
                    .userId?.firstName,
                lastName: state.notificationsResponse?.notifications?[index]
                    .userId?.lastName,
                username: state.notificationsResponse?.notifications?[index]
                    .userId?.username,
                isCurrentUserProfile: false,
              ));
        },
        child: vibeeListTile(
          // common notifications list tile
          title:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName}",
          subtitle:
              "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName} accepted your friend request",

          iconSize: 10,
          iconColor: Colors.green,
          prefixWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: vibeeDp(
              image: AssetImage(CommonVariables.testImagePath7),
              height: 50,
              width: 50,
            ),
          ),
        ),
      );
    } else {
      return vibeeListTile(
        // common notifications list tile
        title:
            "${state.notificationsResponse?.notifications?[index].userId?.firstName} ${state.notificationsResponse?.notifications?[index].userId?.lastName}",
        subtitle: " unknown Notification",

        iconSize: 10,
        iconColor: Colors.green,
        prefixWidget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: vibeeDp(
            image: AssetImage(CommonVariables.testImagePath7),
            height: 50,
            width: 50,
          ),
        ),
      );
    }
  }
}
