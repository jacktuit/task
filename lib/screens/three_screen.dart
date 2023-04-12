import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/navigator_provider/novigator.dart';



class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key}) : super(key: key);

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
                height: 260,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/Star.png"),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Icon(Icons.done,color: Colors.white,size: 25,),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Спасибо!",
                        style: TextStyle(color: Color(0xff011936),fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Модераторы скоро рассмотрят вашу жалобу.",
                        style: TextStyle(color: Color(0xff011936)),
                      ),
                    ],
                  ),

                ],
              ),


              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 30,
              ),
              InkWell(

                onTap: () => context.read<NavigatorProvider>().navigatorForMain(context),
                child: Container(
width: double.infinity,
                  padding: EdgeInsets.only(top: 20, bottom: 20,left: 60,right: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff3a86fe)),
                  child: Center(
                    child: Text(
                      'Закрыть',
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
