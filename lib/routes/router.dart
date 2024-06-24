import 'package:auto_route/auto_route.dart';
import 'package:ido_mobile_application/features/app_initialisation/presentation/splash_screen.dart';
part 'router.gr.dart';

//  toujours executer cette commande apres modification des routes ## dart run build_runner build ##
@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
      ];
}
