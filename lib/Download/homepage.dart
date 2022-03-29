import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:play_it/Download/_suggetionpage.dart';
import 'package:play_it/Download/download.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List _image1 = [
    'https://pbs.twimg.com/profile_images/1318652224638124032/wrpp2Nl4_400x400.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGSHnjhohZvjxf19zHrR8UKszTq5mIfH9YJQ&usqp=CAU',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/800px-Instagram_logo_2016.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/2048px-YouTube_social_white_square_%282017%29.svg.png',
    'https://media.socastsrm.com/wordpress/wp-content/blogs.dir/2162/files/2020/05/twittter.png',
    'https://image.winudf.com/v2/image/Y29tLmluZGlyLm1wM3R1YmlkeV9zY3JlZW5fM19lZzhrNnZxdw/screen-3.jpg?fakeurl=1&type=.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8opJd7fcSRwYrFu028Ap7ZaLlzyiG5eANsN0V5yJlk_qupJk1DxDymuWnnOsyb5czKB8&usqp=CAU',
    'https://sg-res.9appsdownloading.com/sg/res/jpg/5e/ad/0c6dd1530ee8268583681c94b5c7-sfq.jpg?x-oss-process=style/mq200',
  ];
  List name1 = [
    'WhatsApp',
    'Facebook',
    'Instagram',
    'Youtube',
    'Twitter',
    'Tubidy',
    'TED',
    'LinkFly VPN'
  ];
  late Animation<double> _width;
  late AnimationController _controller;
  late CurvedAnimation _curvedAnimation;
  var _opacity = 1.0;
  var onclick = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _width = Tween<double>(begin: 330, end: 360).animate(_curvedAnimation);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://64.media.tumblr.com/c90100fd260e77796e397f07d1771d34/fd850e41fad78fd6-86/s400x600/f15e520227c7dd8b471d729a48f26080712d8250.gifv'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          elevation: 0,
          title: GestureDetector(
            onTap: _openSearch,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              height: size.height * 0.05,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 3, color: Colors.green)),
              child: Icon(
                Icons.search_rounded,
                color: Colors.grey,
                size: 18,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Down(),
                  ),
                );
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/download_1.png'),
                size: size.width * 0.08,
              ),
              splashRadius: 20,
            ),
          ],
        ),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.03),
                  child: Wrap(
                    // alignment: WrapAlignment.spaceEvenly,
                    runSpacing: size.width * 0.09,
                    spacing: size.width * 0.03,
                    children: List.generate(
                      _image1.length,
                      (index) => Container(
                        width: size.width * 0.2,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: size.width * 0.06,
                              backgroundImage: NetworkImage(_image1[index]),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            FittedBox(
                              child: Text(
                                name1[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                      left: size.width * 0.06,
                      bottom: size.height * 0.05,
                      top: size.height * 0.05),
                  child: Text(
                    'BookMark',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.09),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.grey,
                        onPressed: () => showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Padding(
                              padding: EdgeInsets.all(size.height * 0.02),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Add Bookmark',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: size.width * 0.05),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Bookmark Name',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: size.width * 0.04),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: size.width * 0.002,
                                              color: Colors.green)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: size.width * 0.002,
                                              color: Colors.green)),
                                    ),
                                    cursorHeight: size.height * 0.03,
                                    cursorColor: Colors.green,
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  Text(
                                    'Bookmark URL',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: size.width * 0.04),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: size.width * 0.002,
                                              color: Colors.green)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: size.width * 0.002,
                                              color: Colors.green)),
                                    ),
                                    cursorHeight: size.height * 0.03,
                                    cursorColor: Colors.green,
                                  ),
                                  ButtonBar(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Save',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.grey[100],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: _opacity,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff2bc877),
                    ),
                    padding: EdgeInsets.zero,
                    height: _width.value / 9.5,
                    width: _width.value,
                    child: TextButton.icon(
                      onPressed: onclick == false
                          ? () {
                              setState(() {
                                _opacity = 1.0 - _opacity;
                                onclick = true;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Suggest(),
                                  ),
                                );
                              });
                            }
                          : null,
                      icon: ImageIcon(
                        AssetImage('assets/Icons/bulb.png'),
                        color: Colors.white,
                        size: size.width * 0.05,
                      ),
                      label: Text(
                        'Learn how to download video and audio',
                        style: TextStyle(
                            color: Colors.white, fontSize: _width.value / 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _openSearch() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            body: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          autofocus: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.height *
                                      0.01),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height *
                                          0.03),
                                  borderSide: BorderSide(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                      color: Colors.green)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height *
                                          0.03),
                                  borderSide: BorderSide(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                      color: Colors.green)),
                              prefixIcon: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                                width: MediaQuery.of(context).size.width * 0.02,
                                child: Image.asset('assets/images/google.png'),
                              ),
                              hintText: '\tSearch Or Enter Url',
                              hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, color: Colors.white)),
                          cursorColor: Colors.green,
                          cursorHeight:
                              MediaQuery.of(context).size.height * 0.03,
                        ),
                      ),
                    ],
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
