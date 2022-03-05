import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  var groupValue = 0;
  var contoller = TextEditingController();
  var addlinkcontoller = TextEditingController();
  var password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Privacy Folder'),
          actions: [
            IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => StatefulBuilder(
                  builder: (context, setState) => Dialog(
                    backgroundColor: Colors.grey,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              'Sort By',
                              style: TextStyle(
                                  color: Colors.green, fontSize: 18),
                            ),
                          ),
                          RadioListTile(
                              controlAffinity:
                              ListTileControlAffinity.trailing,
                              title: Text(
                                'Date',
                                style: TextStyle(color: Colors.white),
                              ),
                              activeColor: Colors.green,
                              value: 1,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value as int;
                                });
                              }),
                          RadioListTile(
                              controlAffinity:
                              ListTileControlAffinity.trailing,
                              title: Text(
                                'Name',
                                style: TextStyle(color: Colors.white),
                              ),
                              activeColor: Colors.green,
                              value: 2,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value as int;
                                });
                              }),
                          RadioListTile(
                              controlAffinity:
                              ListTileControlAffinity.trailing,
                              title: Text(
                                'Size',
                                style: TextStyle(color: Colors.white),
                              ),
                              activeColor: Colors.green,
                              value: 3,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value as int;
                                });
                              }),
                          RadioListTile(
                              controlAffinity:
                              ListTileControlAffinity.trailing,
                              title: Text(
                                'Length',
                                style: TextStyle(color: Colors.white),
                              ),
                              activeColor: Colors.green,
                              value: 4,
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  groupValue = value as int;
                                });
                              }),
                          ButtonBar(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Cancel',
                                    style:
                                    TextStyle(color: Colors.grey[200]),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'OK',
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              icon: ImageIcon(
                AssetImage('assets/Icons/sort.png'),
                size: 20,
              ),
            ),
            PopupMenuButton(
              enabled: true,
              onSelected: (value) {
                if (value == 0) {
                  _setpassword();
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text('Set Password'),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: Colors.green,
        ),
    );

  }
  _setpassword() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Change Password'),
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Create PIN to protect your privacy',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Container(
                    height: 100,
                    child: Pinput(
                      length: 4,
                      controller: contoller,
                      defaultPinTheme: PinTheme(
                        width: 56,
                        height: 56,
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 239, 243, 0.4),
                          border: Border.all(
                              color: Color.fromRGBO(234, 239, 243, 1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                      showCursor: true,
                      autofocus: true,
                      closeKeyboardWhenCompleted: false,
                      onSubmitted: (value) {
                        setState(() {
                          password = contoller.text;
                        });
                        contoller.text.isNotEmpty
                            ? showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            elevation: 10,
                            backgroundColor: Colors.grey[850],
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
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
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Please Keep Your Password In Mind !',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  ButtonBar(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          contoller.clear();
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Sure',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                            : null;
                      },
                      onChanged: (value) {
                        setState(() {
                          value = password;
                        });
                      },
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
