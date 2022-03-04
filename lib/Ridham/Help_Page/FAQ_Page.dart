import 'package:flutter/material.dart';

class FAQ_Page extends StatefulWidget {
  const FAQ_Page({Key? key}) : super(key: key);

  @override
  State<FAQ_Page> createState() => _FAQ_PageState();
}

class _FAQ_PageState extends State<FAQ_Page> {
  var _videoList = [
    "1.PLAYit syill asks me to install PLAYit in watching a video",
    "2.Why the video skips by itself?",
    "3.Why the video cannot forward/backward?",
    "4.Buffering in online video",
    "5.Buffering in ofline video",
    "6.How do I background play a video?",
    "7.How do I turn off auto-rotation?",
    "8.How do I customize the font and color of my subtitle?",
    "9.How do I change the audio tracks?",
    "10.How do I cut and share a video clip?",
    "11.How do I turn off the subtile?",
    "12.Not find target translated language in Al subtile translation",
    "13.Wrong translated in Al subtile traslation",
    "14.Not download translated subtitle",
    "15.Not download subtitles,showing 'network error'",
    "16.Fail to play next video continuously",
    "17.Why I cannot change online Youtube videos' settings?",
    "18.How do I return full screen in the popup video?",
  ];

  var _audiolist=[
    "1.I cannot play music in the backtround when I leave PLAYit and use other app",
    "2.How do I change the order of songs?",
    "3.When a song plays to the end,it doesn't continue to play the next song but repeat the same one.",
  ];

  var _downlondlist=[
    "1.Why my torrent download is really slow?",
    "2.What's the benefit of seedind after I download?",
    "3.How do I change the storage path of my download?",
    "4.How do I pause a dowload task",
    "5.Why I cannot resume the download after I pause it?",
    "6.How do I download a video or a song?",
  ];

  var browserlist=[
    "1.I cannot open a page in PLAYit's Sites.",
  ];

  var _viplist=[
    "1.How do I subscribe the yearly vip?",
    "2.How do I cancel my subscription?",
    "3.How do I use VIP redeem code?",
    "4.Do you have VIP subscription for lifetime?",
    "5.After I reinstall PLAYit,my VIP disappears.",
  ];

  var _otherslist=[
    "1.What to do if I forger password of private floder?",
    "2.Is PLAYit available in PC?",
    "3.I dislike the dirty ads showing in PLAYit.",
    "4.How do I share files with others?",
    "5.How can I remove my watching history?",
    "6.Why my videos cannot be played in other players?",
    "7.I have downloaded PLAYit but PDisk still directs me to Google Play.",
    "8.Why I cannot change the theme?",
    "9.Why my coins disappear after I clear cache?",
    "10.Why my video doesn't have sound in casting?",
    "11.Is PLAYit available in iOS market?",
    "12.Is PLAYit available in Android TV?",
    "13.What can't I use a custom theme?",
    "14.What should I do if I accidentally deleted a flie by mistake?",
    "15Why my files disappear after moving in/out of private folder?",
  ];

  var _currentitem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: ListView(
        children: [
          Column(
            children: [
              ExpansionTile(
                leading: Icon(Icons.slow_motion_video_sharp,color: Colors.white,),
                title: Text(
                  "Video",
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                children: [
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("1.PLAYit syill asks me to install PLAYit in watching a video", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("2.Why the video skips by itself?",style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("3.Why the video cannot forward/backward?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("4.Buffering in online video", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("5.Buffering in ofline video", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("6.How do I background play a video?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("7.How do I turn off auto-rotation?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("8.How do I customize the font and color of my subtitle?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("9.How do I change the audio tracks?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("10.How do I cut and share a video clip?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("11.How do I turn off the subtile?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("12.Not find target translated language in Al subtile translation", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("13.Wrong translated in Al subtile traslation", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("14.Not download translated subtitle", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("15.Not download subtitles,showing 'network error'", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("16.Fail to play next video continuously", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("17.Why I cannot change online Youtube videos' settings?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("18.How do I return full screen in the popup video?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                ],
                collapsedIconColor: Colors.white,

              ),
              ExpansionTile(
                leading: Icon(Icons.headphones_outlined),
                title: Text(
                  "Audio",
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                children: [
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("1.I cannot play music in the backtround when I leave PLAYit and use other app", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("2.How do I change the order of songs?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("3.When a song plays to the end,it doesn't continue to play the next song but repeat the same one.", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                ],
                collapsedIconColor: Colors.white,
              ),
              ExpansionTile(
                leading: Icon(Icons.download),
                title: Text(
                  "Audio",
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                children: [
                  ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    title: Text("2.How do I change the order of songs?", style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),

                ],
                collapsedIconColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
