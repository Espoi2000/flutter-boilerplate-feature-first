import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // print(" ");
    // print(
    //     "************ STATE CHANGE START IN \"${bloc.runtimeType}\" ******************");
    // print('${bloc.runtimeType} $change');
    // print('${bloc.runtimeType} ${change.currentState.toString()}');
    // print(
    //     "************* STATE CHANGE END IN \"${bloc.runtimeType}\" *******************");
    // print(" ");
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(" ");
    print(
        "++++++++++++++++++ STATE TRANSITION START IN \"${bloc.runtimeType}\" +++++++++++++++++++");
    print('${bloc.runtimeType} $transition');
    print('${bloc.runtimeType} ${transition.currentState.toString()}');
    print(
        "++++++++++++++++++ STATE TRANSITION END IN \"${bloc.runtimeType}\" +++++++++++++++++++");
    print(" ");
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    print(
        "============================================================================");
    print(
        "===================== BLOC ERROR IN ${bloc.runtimeType} ===================");
    print(
        "============================================================================");

    print(
        '\nSTACK TRACE START ->>>>>>>\n ${bloc.runtimeType} $error $stackTrace  \n<<<<<<<<- STACK TRACE ENDS\n');
  }
}
