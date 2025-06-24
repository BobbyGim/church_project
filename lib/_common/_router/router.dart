import 'package:church_project/_common/_layout/view/default_shell_layout.dart';
import 'package:church_project/_common/_router/fade_transition_router.dart';
import 'package:church_project/_page/_home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// navigator key 생성
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey, // 여기!
      builder: (context, state, child) {
        return DefaultShellLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder:
              (BuildContext context, GoRouterState state) =>
                  FadeTransitionRouter(child: HomePage()),
        ),

        GoRoute(
          path: '/weekly',
          pageBuilder:
              (BuildContext context, GoRouterState state) =>
                  FadeTransitionRouter(child: HomePage()),
        ),

        GoRoute(
          path: '/monthly',
          pageBuilder:
              (BuildContext context, GoRouterState state) =>
                  FadeTransitionRouter(child: HomePage()),
        ),
      ],
    ),
  ],
);
