import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 현재 location을 기반으로 BottomNavBar 인덱스를 계산
int getBottomNavIndexFromLocation(String location) {
  switch (location) {
    case '/':
      return 0;
    case '/weekly':
      return 1;
    case '/monthly':
      return 2;
    default:
      return 0; // 기본값
  }
}

final bottomNavIndexProvider = StateProvider<int>(
  (ref) => 0,
);
