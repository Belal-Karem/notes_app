import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('Chang =$change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('create = $bloc');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close =$bloc');
    super.onClose(bloc);
  }
}
