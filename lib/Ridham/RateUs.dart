import 'package:flutter/material.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';

class aa {
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
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          Size size =MediaQuery.of(context).size;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 50, left: 60),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFF4DE),
                            Color(0xffFEF2CA),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: size.height * 0.07),
                            child: Text(
                              "$text",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.brown[700],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                                left: 20, top: 10, right: 10),
                            child: Text(
                              "If you like PLAYit,please give us five stars on the Google Play",textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.brown[400]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width *0.02, top: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
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
                                    color: _star
                                        ? Colors.orange
                                        : Colors.brown,
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
                                    color: _star1
                                        ? Colors.orange
                                        : Colors.brown,
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
                                    color: _star2
                                        ? Colors.orange
                                        : Colors.brown,
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
                                    color: _star3
                                        ? Colors.orange
                                        : Colors.brown,
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
                                    color: _star4
                                        ? Colors.orange
                                        : Colors.brown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: ()=>Navigator.pop(context),
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 35,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.amber.shade400,
                                    Colors.orange.shade800,
                                  ],
                                  end: Alignment.bottomCenter,begin: Alignment.topCenter
                                ),
                                boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2,spreadRadius: 0.1)]
                              ),
                              child: Text('Submit',
                                  style: TextStyle(color: Colors.brown[700])),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Exit",
                                style: TextStyle(color: Colors.brown[700]),
                              )),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.clear, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Baseline(
                baseline: -210,
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
