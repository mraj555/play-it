import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Newpassword extends StatefulWidget {
  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  late SharedPreferences _preferences;
  var password;
  var newPassword = '';
  var newPasswordController = TextEditingController();
  var error='Enter The PIN';
  var _color = Colors.green;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    _preferences = await SharedPreferences.getInstance();
    setState(() {
      password = _preferences.getString('pass');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Privacy Folder'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(error,style: TextStyle(color: _color),),
              SizedBox(height: 20),
              Pinput(
                length: 4,
                controller: newPasswordController,
                defaultPinTheme: PinTheme(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.08,
                  textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 239, 243, 0.4),
                    border: Border.all(color:_color, width: 2),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.03),
                  ),
                ),
                obscureText: true,
                showCursor: true,
                autofocus: true,
                closeKeyboardWhenCompleted: false,
                onSubmitted: (value) {
                  if (password == newPassword) {
                    newPasswordController.clear();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Privacy(),
                      ),
                    );
                  } else {
                    error='Incorrect Password !!';
                    _color=Colors.red;
                  }
                },
                onChanged: (value) {
                  value = newPassword;
                  newPassword = newPasswordController.text;
                },
              ),
              SizedBox(height: 20),
              Text(
                "Your PIN ${password}",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
