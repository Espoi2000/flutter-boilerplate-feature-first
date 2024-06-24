import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var trans = AppLocalizations.of(context);
    var size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.blue,
      width: size.width,
      height: size.height,
      child: Center(
        child: Text(
          trans!.findyoumarket,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
