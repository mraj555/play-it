import 'package:flutter/material.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';

class aa{
  static var _star = false;
  static var _star1 = false;
  static var _star2 = false;
  static var _star3 = false;
  static var _star4 = false;

  static var a = 'assets/Icons/0.webp';
  static var b = 'assets/Icons/1.webp';
  static var c = 'assets/Icons/2.webp';
  static var d = 'assets/Icons/3.webp';
  static var e = 'assets/Icons/4.webp';
  static var f = 'assets/Icons/5.webp';

  static var text = 'Rate Us';
  static var text1 = 'Hate it';
  static var text2 = 'Dislike it';
  static var text3 = "It's OK";
  static var text4 = 'Like it';
  static var text5 = 'Love it';

  rate() {
    return   Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: StatefulBuilder(
        builder: (BuildContext context, void Function(void Function()) setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 60),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFF4DE),
                            Color(0xffFEF2CA),
                          ],
                        ),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Text(
                              "$text",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 25, right: 10),
                            child: Text(
                              "If you like PLAYit,please give us flive stars on the Google Play",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45, top: 20),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(
                                          () {
                                        _star = !_star;
                                        if (_star == true) {
                                          _star = true;
                                          _star1 = false;
                                          _star2 = false;
                                          _star3 = false;
                                          _star4 = false;
                                          a = b;
                                          text = text1;
                                        }
                                        if (_star == false) {
                                          _star = true;
                                          _star1 = false;
                                          _star2 = false;
                                          _star3 = false;
                                          _star4 = false;
                                          a = b;
                                          text = text1;
                                        }
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _star ? Icons.star : Icons.star_border,
                                    size: 35,
                                    color: _star ? Colors.amber : Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(
                                          () {
                                        _star1 = !_star1;
                                        if (_star1 == true) {
                                          _star = true;
                                          _star1 = true;
                                          _star2 = false;
                                          _star3 = false;
                                          _star4 = false;
                                          a = c;
                                          text = text2;
                                        }
                                        if (_star1 == false) {
                                          _star1 = true;
                                          _star2 = false;
                                          _star3 = false;
                                          _star4 = false;
                                          a = c;
                                          text = text2;
                                        }
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _star1 ? Icons.star : Icons.star_border,
                                    size: 35,
                                    color: _star1 ? Colors.amber : Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(
                                          () {
                                        _star2 = !_star2;
                                        if (_star2 == true) {
                                          _star = true;
                                          _star1 = true;
                                          _star2 = true;
                                          _star3 = false;
                                          _star4 = false;
                                          a = d;
                                          text = text3;
                                        }
                                        if (_star2 == false) {
                                          _star2 = true;
                                          _star3 = false;
                                          _star4 = false;
                                          a = d;
                                          text = text3;
                                        }
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _star2 ? Icons.star : Icons.star_border,
                                    size: 35,
                                    color: _star2 ? Colors.amber : Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(
                                          () {
                                        _star3 = !_star3;
                                        if (_star3 == true) {
                                          _star = true;
                                          _star1 = true;
                                          _star2 = true;
                                          _star3 = true;
                                          _star4 = false;
                                          a = e;
                                          text = text4;
                                        }
                                        if (_star3 == false) {
                                          _star3 = true;
                                          _star4 = false;
                                          a = e;
                                          text = text4;
                                        }
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _star3 ? Icons.star : Icons.star_border,
                                    size: 35,
                                    color: _star3 ? Colors.amber : Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(
                                          () {
                                        _star4 = !_star4;
                                        if (_star4 == true) {
                                          _star = true;
                                          _star1 = true;
                                          _star2 = true;
                                          _star3 = true;
                                          _star4 = true;
                                          a = f;
                                          text = text5;
                                        }
                                        if (_star4 = true) {
                                          _star4 = true;
                                          a = f;
                                          text = text5;
                                        }
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _star4 ? Icons.star : Icons.star_border,
                                    size: 35,
                                    color: _star4 ? Colors.amber : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                onPressed: _star == true
                                    ? () {
                                  _star =false;
                                  _star1 =false;
                                  _star2 =false;
                                  _star3 =false;
                                  _star4 =false;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Myme(),
                                    ),
                                  );
                                }
                                    : null,
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff1613c2),
                                    fixedSize: Size(300, 25)),
                                child: Text("Submit"),),),
                          ),
                          TextButton(onPressed: () {}, child: Text("Exit")),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220, top: 5),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => Myme()));
                          },
                          child: Icon(
                            Icons.cancel,
                            color: Colors.grey,
                          )),
                    )
                  ],
                ),
              ),
              Baseline(
                baseline: -250,
                baselineType: TextBaseline.ideographic,
                child: Image.asset(
                  '$a',
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}