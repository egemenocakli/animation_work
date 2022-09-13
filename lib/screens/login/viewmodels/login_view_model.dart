import 'dart:async';
import 'package:animation_work/base/viewmodels/base_view_model.dart';
import 'package:animation_work/screens/login/login_service.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {

  final LoginService service;
  LoginViewModel({required this.service});


  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
   List<String> _columnData = [];
   List<String> _rowData = [];


  @override
  FutureOr<void> init() async {
    getDatas();
  }


        getDatas(){
          for(int i=0; i<=1000000; i++){
            _columnData.add(i.toString());
            i++;
          }
          for(int i=0; i<=1000000; i++){
            _rowData.add(i.toString());
            i++;
          }
      }

  //Getters
  List<String> get columnData => _columnData;
  List<String> get rowData => _rowData;

  set columnData(List<String> value) {
    _columnData = value;
    reloadState();
  }

  set rowData(List<String> value) {
    _rowData = value;
    reloadState();
  }

}
