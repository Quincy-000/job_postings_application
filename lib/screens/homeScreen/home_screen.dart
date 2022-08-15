import '../all.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final String _title = 'Sales Manager Position';
  final String _description =
      '- Bachelor\'s degre; or equivalent practical experience.\n- 7 years of experience working in sales, support, or offer development.\n- 5 years of experience managing a customer-facing Support team.\n- Ability to speak and write in English and Spanish fluently.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Open Positions',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            const Divider(thickness: 2),
            Card(
              margin: const EdgeInsets.all(5),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return homeCard(_description, _title);
                },
                itemCount: 3,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );
  }

  homeCard(description, title) {
    return Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              softWrap: true,
            ),
            //const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(description),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'application_screen');
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                child: Text('Apply $title Position'))
          ],
        ));
  }
}
