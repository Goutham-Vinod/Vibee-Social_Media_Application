import 'dart:convert';
import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:vibee/core/config.dart';
import 'package:vibee/domain/models/add_comments_response_model/notification.dart';
import 'package:vibee/domain/models/add_or_remove_friend_response_model/notification.dart';
import 'package:vibee/domain/models/create_post_response_model/notification.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/notification.dart';
import 'package:vibee/domain/models/sent_message_response_model/sent_message_response_model.dart';
import 'package:vibee/domain/models/video_call_response_model/video_call_response_model.dart';
import 'package:vibee/infrastructure/notification_services.dart';

class SocketIoServices {
  static late IO.Socket socket;

  static connectSocket() {
    socket = IO.io(Config.apiBaseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket.connect();
    socket.onConnect((_) {
      print('socket io connected');
    });
    // socket.on('testEvent', (data) => print(data));
    socket.onDisconnect((_) => print('socket io disconnected'));

    // listen and show Notification

    listenFetchNewNotificationEvent(null);
    listenLatestMessageEvent(null);
    listenNewCallEvent(null);
  }

  // emit events

  static setup(String tocken) {
    socket.emit('setup', tocken);
  }

  static joinChat(GetMessageResponseModel data) {
    socket.emit('joinChat', data.toJson());
  }

  static newMessage(SentMessageResponseModel data) {
    socket.emit('newMessage', data.toJson());
  }

  static newNotification(CreatePostResponseNotificationModel data) {
    socket.emit('newNotification', data.toJson());
  }

  static likeDislike(LikeDislikeResponseNotificationModel data) {
    socket.emit('postInteract', data.toJson());
  }

  static addComment(AddCommentsResponseNotificationModel data) {
    socket.emit('postInteract', data.toJson());
  }

  static addFriend(AddOrRemoveFriendResponseNotificationModel data) {
    socket.emit('friendRequest', data.toJson());
  }

  static videoCall(VideoCallResponseModel data) {
    log('videocall request at socket ${data.toJson().toString()}');
    socket.emit('videoCall', data.toJson());
  }

  static callRecieved(VideoCallResponseModel data) {
    socket.emit('callRecieved', data.toJson());
  }

  static rejectCall(VideoCallResponseModel data) {
    socket.emit('rejectCall', data.toJson());
  }

  static disconnectCall(VideoCallResponseModel data) {
    log('videocall disconnect at socket ${data.toJson().toString()}');
    socket.emit('disconnectCall', data.toJson());
  }

  // listening events

  static listenCheckOnlineUsersEvent(Function function) {
    socket.on('checkOnlineUsers', (data) {
      function();
    });
  }

  static listenLatestMessageEvent(Function? function) {
    socket.on('latestMessage', (data) {
      print('socket message : $data');

      if (function != null) {
        function();
      }

      SentMessageResponseModel result =
          SentMessageResponseModel.fromJson(jsonDecode(data));

      NotificationService.showNotification(
        id: 1,
        title: '${result.sender?.firstName} ${result.sender?.lastName}',
        body: result.content ?? '',
        payload: {
          'type': 'message',
          'data': data as String,
        },
        category: NotificationCategory.Message,
      );
    });
  }

  static listenFetchNewNotificationEvent(Function? function) {
    socket.on('fetchNewNotification', (data) {
      if (function != null) {
        function();
      }
    });
  }

  static listenNewCallEvent(Function? function) {
    socket.on('newCall', (data) {
      print('videocall response at socketlisten');

      print('videocall response at socketlisten ${data.toString()}');
      if (function != null) {
        function();
      }

      VideoCallResponseModel result =
          VideoCallResponseModel.fromJson(jsonDecode(data));

      NotificationService.showNotification(
        id: 2,
        title: 'Incoming call',
        body:
            'Video call from ${result.from?.firstName} ${result.from?.lastName}',
        payload: {
          'type': 'call',
          'data': data as String,
        },
        category: NotificationCategory.Call,
        autoDismissible: false,
        actionButtons: [
          NotificationActionButton(
              key: 'reject', label: "Reject", color: Colors.red),
          NotificationActionButton(
              key: 'accept', label: "Accept", color: Colors.green),
        ],
      );
    });
  }

  static listenCallRejectedEvent(Function function) {
    socket.on('callRejected', (data) {
      function();
    });
    // pop the video call page with a snackbar notification when the remote user reject the call
    // implementation at bloc
  }

  static listenCallDisconnectedEvent(Function function) {
    socket.on('callDisconnected', (data) {
      function();
    });
    // pop the video call page when any one user left the conversation
    // implementation at bloc
    AwesomeNotifications().cancel(
        2); // cancel notification if remote user call and reject suddenly
  }
}
