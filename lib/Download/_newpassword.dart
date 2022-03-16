import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '_Privacy.dart';

class Newpassword extends StatefulWidget {
  var oldpassword;
  Newpassword({this.oldpassword});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  var error = 'Enter The PIN';
  var errorcolor = Colors.green;
  var newpassword = '';
  var newpasswordcontroller = TextEditingController();
  late SharedPreferences _preferences;

  @override
  void initState() {
    super.initState();
    gettdata();
  }

  gettdata() async {
    _preferences = await SharedPreferences.getInstance();
    setState(() {
      widget.oldpassword = _preferences.getString('pass');
    });
  }

  @override
  void dispose() {
    newpasswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Privacy Folder'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${error}',
                    style: TextStyle(
                        color: errorcolor,
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Pinput(
                      length: 4,
                      controller: newpasswordcontroller,
                      defaultPinTheme: PinTheme(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.08,
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 239, 243, 0.4),
                          border: Border.all(
                              width: 2,
                              color:errorcolor),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.03),
                        ),
                      ),
                      obscureText: true,
                      showCursor: true,
                      autofocus: true,
                      closeKeyboardWhenCompleted: false,
                      onSubmitted: (value) {
                        setState(() {
                          print('${widget.oldpassword}');
                          newpassword = newpasswordcontroller.text;
                          print('${newpassword}');
                          _preferences.setString('pass', newpassword);
                          if (widget.oldpassword == newpassword) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Privacy(),
                              ),
                            );
                          }
                        });
                        newpasswordcontroller.clear();
                        if (newpassword == widget.oldpassword) {
                          error = 'Enter The PIN';
                          errorcolor = Colors.green;
                        } else {
                          error = 'Incorrect Password !!';
                          errorcolor = Colors.red;
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          value = newpassword;
                        });
                      },
                    ),
                  ),
                  Text("PIN ${widget.oldpassword}",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
