import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:play_it/Download/download.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _image1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGSHnjhohZvjxf19zHrR8UKszTq5mIfH9YJQ&usqp=CAU',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/800px-Instagram_logo_2016.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/2048px-YouTube_social_white_square_%282017%29.svg.png',
    'https://media.socastsrm.com/wordpress/wp-content/blogs.dir/2162/files/2020/05/twittter.png',
    'https://image.winudf.com/v2/image/Y29tLmluZGlyLm1wM3R1YmlkeV9zY3JlZW5fM19lZzhrNnZxdw/screen-3.jpg?fakeurl=1&type=.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8opJd7fcSRwYrFu028Ap7ZaLlzyiG5eANsN0V5yJlk_qupJk1DxDymuWnnOsyb5czKB8&usqp=CAU',
    'https://sg-res.9appsdownloading.com/sg/res/jpg/5e/ad/0c6dd1530ee8268583681c94b5c7-sfq.jpg?x-oss-process=style/mq200',
  ];
  List name1 = [
    'Facebook',
    'Instagram',
    'Youtube',
    'Twitter',
    'Tubidy',
    'TED',
    'LinkFly VPN'
  ];
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
            onTap: _opensearch,
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
                size: 24,
              ),
              splashRadius: 20,
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: size.width * 0.05,right: size.width * 0.05, top: size.height * 0.03),
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
                        Container(
                          child: CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage(_image1[index]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.05, bottom: size.height * 0.05),
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
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add Bookmark',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 18),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bookmark Name',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.green)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.green)),
                                ),
                                cursorHeight: 18,
                                cursorColor: Colors.green,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bookmark URL',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.green)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.green)),
                                ),
                                cursorHeight: 18,
                                cursorColor: Colors.green,
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel',
                                        style: TextStyle(color: Colors.grey)),
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
          ],
        ),
      ),
    );
  }

  _opensearch() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(10),
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
                        height: 35,
                        width: 280,
                        child: TextField(
                          autofocus: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.green)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.green)),
                              prefixIcon: Container(
                                height: 10,
                                width: 10,
                                child: Image.asset('assets/images/google.png'),
                              ),
                              hintText: 'Search Or Enter Url',
                              hintStyle: TextStyle(fontSize: 12)),
                          cursorColor: Colors.green,
                          cursorHeight: 18,
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
