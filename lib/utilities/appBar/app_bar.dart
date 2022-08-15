import 'all.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
      toolbarHeight: 180,
      elevation: 10,
      titleTextStyle: const TextStyle(
        color: Color.fromARGB(255, 248, 248, 248),
        fontSize: 24,
      ),
      title: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Card(
              margin: const EdgeInsets.all(5),
              child: Image.asset("assets/default.png"),
            ),
          ),
          const Text(
            "ABC\nCompany",
            textAlign: TextAlign.center,
          ),
        ],
      ));
}
