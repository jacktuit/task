import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../provider/navigator_provider/novigator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              'Что на странице Контантина кажется вам недопустимым?',
              style: TextStyle(
                  color: Color(0xff011936),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () => context.read<NavigatorProvider>().navigator(context),
                child: Text("Спам")),
            SizedBox(
              height: 10,
            ),  Text("Мошенничество"),
            SizedBox(
              height: 10,
            ),  Text("Оскорбления"),
            SizedBox(
              height: 10,
            ),  Text("Откровенное изображение"),
            SizedBox(
              height: 10,
            ),  Text("Проблема с профилем"),
            SizedBox(
              height: 10,
            ),  Text("Нарушение интеллектуальных прав"),
            SizedBox(
              height: 10,
            ),  Text("Прочее"),
            SizedBox(
              height: 10,
            ),
            // Count(),
          ],
        ),
      ),

    );
  }
}


