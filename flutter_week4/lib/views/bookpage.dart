part of 'pages.dart';

class Bookpage extends StatefulWidget {
  const Bookpage({Key? key}) : super(key: key);
  static const String routeName = '/bookpage';

  @override
  _BookpageState createState() => _BookpageState();
}

class _BookpageState extends State<Bookpage> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhonenumber = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlName.dispose();
    ctrlPhonenumber.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Form(
          key: _loginKey,
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Full Name", prefixIcon: Icon(Icons.person)),
                controller: ctrlName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return value.toString().isEmpty
                      ? 'Please fill in the blank!'
                      : null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email Address", prefixIcon: Icon(Icons.email)),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                ),
                controller: ctrlPhonenumber,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "City",
                  prefixIcon: Icon(Icons.location_city),
                ),
                controller: ctrlCity,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return value.toString().isEmpty
                      ? 'Please fill in the blank!'
                      : null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    if (ctrlName.text.toString() == "" ||
                        ctrlEmail.text.toString() == "" ||
                        ctrlPhonenumber.text.toString() == "" ||
                        ctrlCity.text.toString() == "") {
                      showDialog(
                          context: context,
                          builder: (((context) {
                            return AlertDialog(
                              title: Text("Book Failed.."),
                              content: Text("Please fill all the fields"),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: (() {
                                      Navigator.of(context).pop(context);
                                    }),
                                    child: Text("Ok"))
                              ],
                            );
                          })));
                    } else {
                      showDialog(
                          context: context,
                          builder: (((context) {
                            return AlertDialog(
                              title: Text("Booking Success"),
                              content: Column(
                                children: [
                                  Text("Full Name : " +
                                      ctrlName.text.toString()),
                                  Text("Email : " + ctrlEmail.text.toString()),
                                  Text("Phone Number : " +
                                      ctrlPhonenumber.text.toString()),
                                  Text("City : " + ctrlCity.text.toString()),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, HomePage.routename);
                                      },
                                      child: Text("OK"))
                                ],
                              ),
                            );
                          })));
                    }
                  },
                  child: Text("Book Now!"))
            ],
          ),
        ),
      ),
    );
  }
}
