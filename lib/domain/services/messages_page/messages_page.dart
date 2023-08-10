import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';

class MessagesPageServices {
  static bool isPost(String? message) {
    List<String>? tempList = message?.split('/');

    bool isPost = false;
    if (tempList != null && tempList.length == 3) {
      isPost = tempList[1] == 'post';
    }
    return isPost;
  }
}
