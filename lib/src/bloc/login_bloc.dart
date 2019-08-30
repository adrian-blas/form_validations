import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'package:formvalidation/src/bloc/validators.dart';

class LoginBloc with Validators {

  final _emailController     = BehaviorSubject<String>();
  final _passwordController  = BehaviorSubject<String>();

  // recuperar los datos del stram
  Stream<String> get emailStream     => _emailController.stream.transform( validarWmail );
  Stream<String> get passwordStream  => _passwordController.stream.transform( validarPassword );

  Stream<bool> get formValidStream => Observable.combineLatest2(emailStream, passwordStream, (e, p) => true );

  // insertar valores al stream
  Function(String) get changeEmail     => _emailController.sink.add;
  Function(String) get changePassword  => _passwordController.sink.add;

  // Obtener el ultimo valor agregado al stream
  String get email    => _emailController.value;
  String get password => _passwordController.value;

  dispose(){

    _emailController?.close();
    _passwordController?.close();

  }

}

