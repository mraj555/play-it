import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pinput/pinput.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:play_it/Download/_add.dart';
import 'package:play_it/Download/_password.dart';
import 'package:play_it/Download/homepage.dart';
import 'package:play_it/Ridham/RateUs.dart';
import '../Nehal/Me/Downloadpage.dart';

class Down extends StatefulWidget {
  var password;

  Down({this.password});

  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;
  var contoller = TextEditingController();
  var newpasswordcontroller = TextEditingController();
  var newpassword = '';
  var error = 'Enter The PIN';
  var errorcolor=Colors.green;
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Download'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                if (widget.password == null) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Privacy()));
                } else {
                  _enterpassword();
                }
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/privacy.png'),
                size: size.height * 0.2,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Add())),
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: size.height * 0.04,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Downloadpage()));
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/setting.png'),
                size: size.height * 0.2,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.2),
            Image.asset(
              'assets/Icons/emptybox.png',
              height: size.height * 0.2,
              width: size.width * 0.4,
            ),
            Text(
              'No File',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: size.height * 0.01),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go To Download',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff2bc877), fixedSize: Size(180, 15)),
            ),
            SizedBox(height: size.height * 0.3),
            ListTile(
              tileColor: Colors.grey[700],
              onTap: () {},
              leading: Icon(
                Icons.phone_android_sharp,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _enterpassword() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
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
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 239, 243, 0.4),
                            border: Border.all(
                                color: Color.fromRGBO(234, 239, 243, 1)),
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
                            print('${widget.password}');
                            newpassword = newpasswordcontroller.text;
                            print('${newpassword}');
                            if (widget.password == newpassword) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Privacy()));
                            } else {}
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            value = newpassword;
                            error = 'Password doesn\'t Not Match !!';
                            errorcolor=Colors.red;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
