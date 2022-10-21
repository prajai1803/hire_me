import 'package:flutter/material.dart';
import 'package:hire_me/helper/custom_page_route.dart';
import 'package:hire_me/ui/pages/home_page/home_screen.dart';
import 'package:hire_me/ui/pages/projects/project_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HireMe());
}

class HireMe extends StatelessWidget {
  const HireMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lightBlue,
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 189, 221, 247),
          )),
      routes: <String, WidgetBuilder>{
        '/': (_) => const HomeScreen(),
        '/home': (context) => const HomeScreen(),
        "/projects-list": (_) => ProjectScreen(),
      },
      initialRoute: "/",
      onGenerateRoute: (settings) {
        return CustomRoute.generateRoute(settings);
      },
    );
  }
}
