

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Countersuri with ChangeNotifier,DiagnosticableTreeMixin{

  int count =0;

  void increment()
  {
    count++;
    notifyListeners();
  }
}