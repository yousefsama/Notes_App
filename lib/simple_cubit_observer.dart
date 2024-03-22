import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleCubitObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    debugPrint('change=$change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('change=$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('change=$bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
