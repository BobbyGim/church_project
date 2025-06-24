import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeTransitionRouter extends CustomTransitionPage {
  FadeTransitionRouter({
    required super.child,
    super.key,
    super.restorationId,
    super.maintainState,
    super.fullscreenDialog,
    super.transitionDuration = const Duration(),
  }) : super(
         transitionsBuilder:
             (
               BuildContext context,
               Animation<double> animation,
               Animation<double> secondaryAnimation,
               Widget child,
             ) {
               return FadeTransition(opacity: animation, child: child);
             },
       );
}
