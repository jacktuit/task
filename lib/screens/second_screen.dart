import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/api_provider/send_feedback.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE6E8EB),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "C",
                      style: TextStyle(
                          color: Color(0xff011936),
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Константин Володарский',
                    style: TextStyle(
                        color: Color(0xff011936),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 1,
                    color: Colors.black12,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Спам",
                style: TextStyle(
                    color: Color(0xff011936),
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Отправьте жалобу, если пользователь рассылает рекламные сообщения, комментарии или другим способом распространяет рекламу в непредназначенных для этого местах."),
              SizedBox(
                height: 20,
              ),
              Text(
                "Комментарий (необязательно)",
                style: TextStyle(color: Color(0xffb6b9c0)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color(0xfff3f4f6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 10),
                        child: Text(
                          "Опишите причину жалобы",
                          style: TextStyle(color: Color(0xffb6b9c0)),
                        ),
                      ),
                      TextField(
                        maxLines: 4,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              InkWell(

                onTap: () => context.read<SendFeedback>().sendFeedback(context),
                child: Container(
width: double.infinity,
                  padding: EdgeInsets.only(top: 20, bottom: 20,left: 60,right: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff3a86fe)),
                  child: Center(
                    child: Text(
                      'Отправить жалобу',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
