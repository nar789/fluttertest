


import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Person with ChangeNotifier{

  int _age;

  int get age => _age;

  Person(int initAge){
    _age = initAge;
  }

  void setAge(int a) {
    _age = a;
    notifyListeners();
  }

  void addingAge(int a) {
    _age += a;
    notifyListeners();
  }

}