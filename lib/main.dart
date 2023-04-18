import 'package:first_project_flutter/demos/project19/core/auth_manager.dart';
import 'package:first_project_flutter/demos/project28/feature/products/products_view.dart';
import 'package:first_project_flutter/demos/project28/feature/products/products_view_model.dart';
import 'package:first_project_flutter/product/global/reqres_context.dart';
import 'package:first_project_flutter/product/global/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '303/reqres_resources/service/reqres_service.dart';
import '303/reqres_resources/viewModel/reqres_provider.dart';
import 'demos/project25/viewModel/project_25_provider.dart';
import 'demos/project26/viewModel/project_26_view_model.dart';
import 'demos/project28/product/controller/user_controller.dart';
import 'demos/project28/product/service/user_service.dart';

// Sadece data tutacaksak bir şeyi değiştirmeyeceksek direkt Provider() kullan.
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Provider26>(
        create: (context) => Provider26(),
      ),
      ChangeNotifierProvider<Provider25>(
        create: (context) => Provider25(),
      ),
      ChangeNotifierProvider<ReqresProvider>(
        create: (context) => ReqresProvider(ReqresService()),
      ),
      Provider<ReqresContext>(
        create: (_) => ReqresContext(),
      ),
      ChangeNotifierProvider<ThemeNotifier>(
        create: (context) => ThemeNotifier(),
      ),
      Provider<AuthManager>(
        create: (context) => AuthManager(context: context),
        lazy: true,
      ),
      ChangeNotifierProvider<UserController>(
        create: (context) => UserController(),
      ),
      ChangeNotifierProvider<ProductsViewModel>(
        create: (context) => ProductsViewModel(UserService()),
      ),
      Provider<UserService>(
        create: (context) => UserService(),
        lazy: true,
      )
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: context.watch<ThemeNotifier>().currentTheme,
      //context.watch<ThemeNotifier>().currentTheme,
      //ThemeData.dark().copyWith(
      //tabBarTheme: const TabBarTheme(
      //labelColor: Colors.green, unselectedLabelColor: Colors.red, indicatorSize: TabBarIndicatorSize.label),
      //listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
      //cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      //errorColor: ColorItems.sulu,
      //inputDecorationTheme: const InputDecorationTheme(
      //fillColor: Colors.grey,
      //filled: true,
      //iconColor: Colors.orange,
      //border: OutlineInputBorder(),
      //labelStyle: TextStyle(color: Colors.black),
      //floatingLabelStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600)),
      //appBarTheme: const AppBarTheme(
      //centerTitle: true,
      //systemOverlayStyle: SystemUiOverlayStyle.light,
      //backgroundColor: Colors.white,
      //elevation: 0,
      //)),

      //Bilinmeyen bir sayfa gelirse otomatikman buraya atacak.
      //Mesela yetkisiz bir sayfaya girecekken pathine başka bir sey verip
      //Buraya gönderebilirsin
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const LottieLearn();
      //     }
      //   );
      // },
      // routes: NavigatorRoutes().items,
      // onGenerateRoute: NavigatorCustom().onGenerateRoute,
      home: const ProductsView(),
      // home u yorum satırından kaldırırsan sadece home çalışır.
    );
  }
}
