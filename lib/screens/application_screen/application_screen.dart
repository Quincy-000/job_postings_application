import 'all.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  final GlobalKey<FormState> _mainformKey = GlobalKey();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  late String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apply Sales Manager Position')),
      body: SingleChildScrollView(
          child: Form(
              key: _mainformKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Job Application',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30),
                        ),
                        Text(
                          'Please complete the form below to apply for a position with us.',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 2),
                  //Name TextBox
                  formTextBox(
                    Validation().nameValidation,
                    'Name',
                    _nameController,
                    TextInputType.name,
                    'Name',
                  ),
                  //Date of Birth TextBox
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      onTap: () async {
                        int sYear = DateTime.now().year.toInt() - 60;
                        int lYear = DateTime.now().year.toInt() - 18;
                        var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime(sYear),
                          firstDate: DateTime(sYear),
                          lastDate: DateTime(lYear),
                        );
                        _dobController.text = date.toString().substring(0, 10);
                      },
                      readOnly: true,
                      controller: _dobController,
                      decoration: const InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.calendar_today_outlined),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Date Of Birth',
                      ),
                    ),
                  ),
                  //Phone Number TextBox
                  formTextBox(
                    Validation().phoneValidation,
                    'Phone Number',
                    _addressController,
                    TextInputType.phone,
                    'Phone Number',
                  ),
                  //Address TextBox
                  formTextBox(
                    Validation().addressValidation,
                    'GPS Address',
                    _addressController,
                    TextInputType.streetAddress,
                    'BS-1234-0000',
                  ),
                  //LinkedIn TextBox
                  formTextBox(
                    Validation().emailValidation,
                    'LinkedIn',
                    _addressController,
                    TextInputType.emailAddress,
                    'LinkedIn',
                  ),
                  //Start Date TextBox
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      onTap: () async {
                        int lYear = DateTime.now().year.toInt() + 1;
                        var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(lYear),
                        );
                        _startDateController.text =
                            date.toString().substring(0, 10);
                      },
                      readOnly: true,
                      controller: _startDateController,
                      decoration: const InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.calendar_today_outlined),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Available Start Date',
                      ),
                    ),
                  ),
                  //Reference TextBox
                  formTextBox(
                    Validation().referenceValidation,
                    'How did you hear About Us',
                    _addressController,
                    TextInputType.text,
                    'How did you hear About Us',
                  ),
                ],
              ))),
    );
  }

  formTextBox(validator, label, controller, keyBoardType, hint) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        validator: validator,
        keyboardType: keyBoardType,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
            hintText: hint),
      ),
    );
  }
}
