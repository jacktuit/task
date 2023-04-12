import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../screens/screen.dart';
import '../../screens/second_screen.dart';

class NavigatorProvider with ChangeNotifier, DiagnosticableTreeMixin {



  void navigator(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
  } void navigatorForMain(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
  }


}
