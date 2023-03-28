import 'package:first_project_flutter/303/navigator/navigate_home_detail_view.dart';
import 'package:first_project_flutter/product/navigator/navigator_routes.dart';
import 'package:flutter/material.dart';

import '../../303/lottie_learn.dart';

class NavigatorCustom {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == "/home") {
      return _navigateToNormal(const LottieLearn());
    } else if (routeSettings.name == NavigateRoutes.detail.withParaf) {
      _navigateToNormal(const NavigateHomeDetailView());
    }
    return null;
  }

  // Her seferinde kodları tekrar yazmayalım  diye method oluşturduk.
  Route<dynamic>? _navigateToNormal(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
