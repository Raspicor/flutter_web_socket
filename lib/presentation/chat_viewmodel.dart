//import 'package:flutter_web_socket/presentation/chat_view.dart' as chat;
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class ChatViewModel with ChangeNotifier {
  String _result = '';
  String get result => _result;
  var url = 'http://localhost:3000';
  void getMessage() async {
    String subfix = '/get';
    final res = await http.get(Uri.parse(url + subfix));
    _result = res.toString();
    notifyListeners();
  }
}
