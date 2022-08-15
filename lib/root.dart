import 'all.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 168, 57, 237)),
        ),

        /// A way to navigate between screens.
        initialRoute: "home_screen",
        routes: {
          "home_screen": (context) => const MyHomeScreen(),
          "application_screen":((context) => const ApplicationScreen())
        });
  }
}
