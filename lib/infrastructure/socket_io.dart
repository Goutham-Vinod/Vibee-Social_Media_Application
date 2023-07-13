import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:vibee/core/config.dart';

class Sockets {
  static late IO.Socket socket;

  static connectSocket() {
    socket = IO.io(Config.apiBaseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket.connect();
    socket.onConnect((_) {
      print('connected');
      // socket.emit('msg', 'test');
    });
    socket.on('testEvent', (data) => print(data));
    socket.onDisconnect((_) => print('disconnected'));
  }

  static sentMessage() {
    socket.emit('testEvent', 'test message from app');
  }
}
