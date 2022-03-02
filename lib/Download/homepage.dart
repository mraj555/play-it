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
    'https://png.pngtree.com/element_our/md/20180626/md_5b321c98efaa6.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGSHnjhohZvjxf19zHrR8UKszTq5mIfH9YJQ&usqp=CAU',
    'https://ichef.bbci.co.uk/news/976/cpsprodpb/E802/production/_89649395_instagram_logo_976.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/2048px-YouTube_social_white_square_%282017%29.svg.png',
    'https://about.twitter.com/content/dam/about-twitter/en/brand-toolkit/brand-download-img-1.jpg.twimg.1920.jpg',
    'https://image.winudf.com/v2/image/Y29tLmluZGlyLm1wM3R1YmlkeV9zY3JlZW5fM19lZzhrNnZxdw/screen-3.jpg?fakeurl=1&type=.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8opJd7fcSRwYrFu028Ap7ZaLlzyiG5eANsN0V5yJlk_qupJk1DxDymuWnnOsyb5czKB8&usqp=CAU',
    'https://sg-res.9appsdownloading.com/sg/res/jpg/5e/ad/0c6dd1530ee8268583681c94b5c7-sfq.jpg?x-oss-process=style/mq200',
  ];
  List name1 = [
    'Whatsapp',
    'Facebook',
    'Instagram',
    'Youtube',
    'Twitter',
    'Tubidy',
    'TED',
    'LinkFly VPN'
  ];
  var namecontroller = TextEditingController();
  var name = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: _opensearch,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 280,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 3, color: Colors.green)),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                        size: 18,
                      )),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Down()),
                          (route) => false);
                    },
                    icon: Icon(
                      Icons.download,
                      color: Colors.white,
                    )),
              ],
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 30),
              child: Wrap(
                runSpacing: 20,
                children: List.generate(
                  _image1.length,
                  (index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(_image1[index]),
                        ),
                      ),
                      Text(
                        name1[index],
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                'Book Mark',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  FloatingActionButton(
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
                                controller: namecontroller,
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
                                      setState(() {
                                        name = namecontroller.text;
                                      });
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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()), (route) => false);
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
