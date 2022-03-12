import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Suggest extends StatefulWidget {
  const Suggest({Key? key}) : super(key: key);
  @override
  State<Suggest> createState() => _SuggestState();
}
class _SuggestState extends State<Suggest> {
  final PageController controller = PageController();
  var _image = [
    'assets/images/page1.jpg',
    'assets/images/page2.jpg',
    'assets/images/page3.jpg',
    'assets/images/page4.jpg',
  ];
  var text='1.Enter the Website';
  List skip = [
    'Next',
    'Got it',
    'Good',
    'Start',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff413f42),
      body: Column(
        children: [
          Container(
            height: 380,
            child: PageView(
                controller: controller,
                children: List.generate(
                  _image.length,
                  (index) => Container(
                    margin: EdgeInsets.only(top: size.height * 0.03),
                    height: size.height * 0.6,
                    child: Image.asset(
                      _image[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ),
          ),
          Container(
            height: size.height * 0.07,
            child: SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: JumpingDotEffect(
                  dotWidth: 8,
                  dotHeight: 8,
                  dotColor: Colors.grey.shade400,
                  activeDotColor: Colors.white),
            ),
          ),
          Text(
            'How to download video and audio ?',
            style: TextStyle(
                fontSize: size.width * 0.04, color: Colors.grey),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            '${text}',
            style: TextStyle(
                fontSize: size.width * 0.06, color: Colors.white),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              controller.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn);
            },
            child: Text('Next',
              style: TextStyle(
                  color: Colors.white, fontSize: size.height * 0.025),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff2bc877),
                fixedSize: Size(size.width * 0.4, size.height * 0.04)),
          ),
        ],
      ),
    );
  }
}
