import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:vibee/core/config.dart';
import 'package:vibee/domain/models/add_comments_response_model/add_comments_response_model.dart';
import 'package:vibee/domain/models/add_comments_response_model/notification.dart';
import 'package:vibee/domain/models/add_or_remove_friend_response_model/notification.dart';
import 'package:vibee/domain/models/create_post_response_model/create_post_response_model.dart';
import 'package:vibee/domain/models/create_post_response_model/notification.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/notification.dart';
import 'package:vibee/domain/models/sent_message_response_model/sent_message_response_model.dart';

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

  // listening events

  static listenCheckOnlineUsersEvent(Function function) {
    socket.on('checkOnlineUsers', (data) {
      function();
    });
  }

  static listenLatestMessageEvent(Function function) {
    socket.on('latestMessage', (data) {
      function();
    });
  }

  static listenFetchNewNotificationEvent(Function function) {
    socket.on('fetchNewNotification', (data) {
      function();
    });
  }
}
