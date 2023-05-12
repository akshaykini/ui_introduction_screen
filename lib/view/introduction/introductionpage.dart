import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ui_introduction_screen/view/HomeScreen.dart';

class IntroductoinPage extends StatefulWidget {
  const IntroductoinPage({super.key});

  @override
  State<IntroductoinPage> createState() => _IntroductoinPageState();
}

class _IntroductoinPageState extends State<IntroductoinPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName,[double width = 350]) {
    return Image.asset('images/$assetName',width: width,);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      
       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
       bodyTextStyle: bodyStyle,
       bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
       pageColor: Colors.white,
       imagePadding: EdgeInsets.zero,
       imageFlex: 3,
       bodyFlex: 2,
       
       
      
    );

    return IntroductionScreen(

      
      pages: [

        
        PageViewModel(
          title: "Smile Like ME",
          body:
              "Dogs do speak, but only to those who know how to listen.",
          
          image: _buildImage('dog1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "best Dog Brother",
          body:
              "The better I get to know men, the more I find myself loving dogs.",
          image: _buildImage('dog2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kindness inside Us",
          body:
              "The dog is a gentleman, I hope to go to his heaven",
          image: _buildImage('dog3.jpg'),
          decoration: pageDecoration,
        ),
        ],
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      showSkipButton: true,
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );
      },
    );
  }
}
