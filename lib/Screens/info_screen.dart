import 'package:flutter/material.dart';

import '../Utils/Styles.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final addressController = TextEditingController();

  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQuery = MediaQuery.of(context);
    double _height = _mediaQuery.size.height;
    double _width = _mediaQuery.size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _height,
          width: _width,
          padding: EdgeInsets.fromLTRB(_width * 0.05, 0, _width * 0.05, 0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: _height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: _height * 0.02,
                  ),

                  Stack(
                    children: [
                      // Profile picture
                      Container(
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.white54,
                            size: 100,
                          ),
                        ),
                        height: _height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),

                      // Plus button
                      Positioned(
                        right: 105,
                        top: 85,
                        child: Container(
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          height: _height * 0.05,
                          width: _height * 0.05,
                          decoration: BoxDecoration(
                            color: Styles.colorCustom,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: _height * 0.04,
                  ),

                  // Name
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (name) {
                        if (name.length == 0) {
                          return 'Required';
                        }
                        return null;
                      },
                      controller: nameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Styles.textField),
                        filled: true,
                        fillColor: Styles.textFieldBorder,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.colorCustom),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.textFieldBorder),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: _height * 0.02,
                  ),

                  // Email
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (mail) {
                        if (mail.length == 0)
                          return "Please Give a Valid Email";
                        else if (mail.contains('@') && mail.contains('.com'))
                          return null;
                        return "Not an Email Structure";
                      },
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(color: Styles.textField),
                        filled: true,
                        fillColor: Styles.textFieldBorder,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.colorCustom),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.textFieldBorder),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: _height * 0.02,
                  ),

                  // Number
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (number) {
                        if (number.length == 0) {
                          return "Required";
                        }
                        return null;
                      },
                      controller: numberController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Contact Number",
                        hintStyle: TextStyle(color: Styles.textField),
                        filled: true,
                        fillColor: Styles.textFieldBorder,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.colorCustom),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.textFieldBorder),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: _height * 0.02,
                  ),

                  // Address
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      validator: (address) {
                        if (address.length == 0) {
                          return 'Required';
                        }
                        return null;
                      },
                      controller: addressController,
                      textInputAction: TextInputAction.next,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Address",
                        hintStyle: TextStyle(color: Styles.textField),
                        filled: true,
                        fillColor: Styles.textFieldBorder,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.colorCustom),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Styles.textFieldBorder),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: _height * 0.03,
                  ),

                  // Register button
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, _height * 0.04),
                    child: MaterialButton(
                      // padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      height: _height * 0.08,
                      minWidth: _width * 0.84,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      color: Styles.colorCustom,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          print(nameController.text);
                          print(emailController.text);
                          print(numberController.text);
                          print(addressController.text);
                        }
                      },
                      child: Text('SUBMIT', style: Styles.button()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
