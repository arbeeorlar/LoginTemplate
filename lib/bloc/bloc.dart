import 'dart:async';

import 'package:loginlayout/Util/validation.dart';
import 'package:rxdart/rxdart.dart';


class Bloc extends Object with Validation  implements BaseBloc{

final  _emailController =  StreamController<String>();
final  _passwordController =  StreamController<String>();


Stream<String> get email => _emailController.stream.transform(emailValidator);
Stream<String> get password => _passwordController.stream.transform(passwordValidator);

Function(String) get  emailChanged => _emailController.sink.add;
Function(String) get  passwordChanged => _passwordController.sink.add;

Stream<bool> get submitCheck => Observable.combineLatest2(email, password, (e,p)=>true);

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }





}


abstract  class BaseBloc{
  void  dispose();
}