import 'package:app_bus_boletos/screen/home/bottom_bar.dart';
import 'package:app_bus_boletos/screen/login/login_page.dart';
import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: MyHomePage()
      theme: ThemeData(
        fontFamily: "Manrope",
        colorScheme: theme.colorScheme.copyWith(
            primary: Styles.primaryColor,
            onPrimary: Styles.onPrimary,
            primaryContainer: Styles.containerNavButton,
            secondary: Styles.secondary,
            onSecondary: Styles.cardColor,
            tertiary: Styles.orange),
      ),

      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        // ignore: missing_return
        return MaterialPageRoute(builder: (BuildContext context) {
          switch (settings.name) {
            case "/":
              return LoginPage();
            case "/homePage":
              return Home();
            case "/loginPage":
              return LoginPage();
            default:
              return Home();
          }
        });
      },
    );
  }
}
