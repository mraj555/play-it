import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'download.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  var contoller = TextEditingController();
  var addlinkcontoller = TextEditingController();
  String password = '';
  late SharedPreferences _preferences;

  setdata() async {
    _preferences = await SharedPreferences.getInstance();
    _preferences.setString('pass', password);
    return _preferences;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Change Password'),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create PIN to protect your privacy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.04),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Pinput(
                  length: 4,
                  controller: contoller,
                  defaultPinTheme: PinTheme(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.08,
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(243, 239, 243, 0.4),
                      border: Border.all(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.03),
                    ),
                  ),
                  obscureText: true,
                  showCursor: true,
                  autofocus: true,
                  closeKeyboardWhenCompleted: false,
                  onCompleted: (value) {
                    contoller.text.isNotEmpty
                        ? showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              elevation: 10,
                              backgroundColor: Colors.grey[850],
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.04,
                                    top: MediaQuery.of(context).size.width *
                                        0.04),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Dear Users,\nThe PIN Of Your Privacy Folder Is:',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '$password',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05),
                                    ),
                                    Text(
                                      'Please Keep Your Password In Mind !',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    ButtonBar(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            print(password);
                                            setdata();
                                            Navigator.pop(context);
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Down(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Sure',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.04),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : null;
                  },
                  onChanged: (value) {
                      value = password;
                      password = contoller.text;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
