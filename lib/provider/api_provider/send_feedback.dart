import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../screens/three_screen.dart';


class SendFeedback with ChangeNotifier, DiagnosticableTreeMixin {
  void sendFeedback(BuildContext context) {
    SendFeedbackRepo.getInstance().sendFeedback();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ThreeScreen()));
  }
}

class SendFeedbackRepo {
  static final SendFeedbackRepo _singleton = SendFeedbackRepo._internal();

  SendFeedbackRepo._internal();

  static SendFeedbackRepo getInstance() {
    return _singleton;
  }

  Future<dynamic> sendFeedback() async {
    http.Response? response;
    final requestUrl = Uri.parse("http://89.108.103.40/complaint/profile");

    final requestParameters = {
      "to_user_id": 1,
      "category": "Спам",
      "text": "Данного человека не существует"
    };
    response = await http.post(requestUrl,
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODE4NTQzOTgsInVzZXJfaWQiOjN9.t0KC0iFwjCDnOUdYNVSJ2DR5_qWkiwLIUfmXHkWB4WmC6TKykFtC2maofn2msynosFiDRzRNfoc2OlQBxrU77A',
        },
        body: json.encode(requestParameters));
    final int statusCode = response.statusCode;

    if (statusCode == 200) {
      final resultClass = json.decode(utf8.decode(response.bodyBytes));

      print("Test 2000");

      return resultClass['data'];
    }
    final resultClass = json.decode(utf8.decode(response.bodyBytes));
    return resultClass['error'];
  }
}
