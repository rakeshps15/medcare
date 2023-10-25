import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Signup(),));
}
class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var formkey2 = GlobalKey<FormState>();
  var uname = TextEditingController();
  var uadd = TextEditingController();
  var uphn = TextEditingController();
  var uaphn = TextEditingController();
  var ubld = TextEditingController();
  var uemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  bool passvisibility1 = true;
  bool passvisibility2 = true;

  String dropdownvalue = 'Blood Group';
  var items = [
    'Blood Group',
    'A +ve',
    'A -ve',
    'AB +ve',
    'AB -ve',
    'B +ve',
    'B -ve',
    'O +ve',
    'O -ve',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey2,
          child: Column(children: [
            SizedBox(height: 70,),
            const Padding(
              padding: EdgeInsets.only(left: 100, right: 100, top: 100),
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                "Create an Account, It's free",
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: uname,
                validator: (email) {
                  if (email!.isEmpty) {
                    return "Name is required";
                  } else
                    return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: uadd,
                validator: (address) {
                  if (address!.isEmpty) {
                    return "Address is required";
                  } else
                    return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Address",
                    prefixIcon: Icon(Icons.address),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (phn1) {
                  if (phn1!.isEmpty || phn1.length < 10) {
                    return "Fields are empty ";
                  }
                  else if (uphn.text != uaphn.text)
                  {
                  return "Number not matching";
                  }else {
                  return null;
                  }
                },
                controller: uphn,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (phn2) {
                  if (phn2!.isEmpty || phn2.length < 10) {
                    return "Field are empty";
                  } else if (uphn.text != uaphn.text) {
                    return "Number not matching";
                  } else {
                    return null;
                  }
                },
                controller: uaphn,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Alternate Phone number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: uemail,
                validator: (username) {
                  if (username!.isEmpty ||
                      !username.contains("@") ||
                      !username.contains(".")) {
                    return "Fields are empty or Invalid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "Email ID",
                    prefixIcon: Icon(Icons.contact_mail_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButtonFormField2(
                    // Initial Value
                    value: dropdownvalue,


                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (pass1) {
                  if (pass1!.isEmpty || pass1.length < 6) {
                    return "Fields are empty or Password length must be greaterthan 6";
                  } else {
                    return null;
                  }
                },
                controller: pass,
                obscuringCharacter: "*",
                obscureText: passvisibility1,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passvisibility1 == true) {
                              passvisibility1 = false;
                            } else {
                              passvisibility1 = true;
                            }
                          });
                        },
                        icon: Icon(passvisibility1 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (pass2) {
                  if (pass2!.isEmpty || pass2.length < 6) {
                    return "Password length must be greater than 6";
                  } else if (pass.text != cpass.text) {
                    return "Password not matching";
                  } else {
                    return null;
                  }
                },
                controller: cpass,
                obscuringCharacter: "*",
                obscureText: passvisibility2,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passvisibility2 == true) {
                              passvisibility2 = false;
                            } else {
                              passvisibility2 = true;
                            }
                          });
                        },
                        icon: Icon(passvisibility2 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "Conform Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),

              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                onPressed: () async {
                  final valid2 = formkey2.currentState!.validate();
                  if (valid2) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action: SnackBarAction(label: 'UNDO', onPressed: () {}),
                        content: const Text('Invalid username / password')));
                  }
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black),
                )),
          ]),
        ),
      ),
    );
  }
}
