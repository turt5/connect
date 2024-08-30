import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationModel extends ChangeNotifier{
  late int index;
  NavigationModel({required this.index});


  set setIndex(int value){
    index=value;
    notifyListeners();
  }

  int get getIndex =>index;
}

final navigationProvider = ChangeNotifierProvider((ref)=>NavigationModel(index: 0));