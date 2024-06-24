import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ido_mobile_application/boostrap.dart';
import 'package:ido_mobile_application/shared/application.dart';
import 'package:ido_mobile_application/shared/service_locator.dart';
import 'package:ido_mobile_application/service/blocs/app_bloc_observer.dart';

void main() async {
  runZonedGuarded(() async {
    Bloc.observer = AppBlocObserver();
    WidgetsFlutterBinding.ensureInitialized();
    serviceLocator();
    await boostrap(() => const Application());
  }, (error, stackTrace) {});
}
