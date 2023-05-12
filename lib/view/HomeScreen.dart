import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 30.0);
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SafeArea(child: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Welcome',style: bodyStyle,),
                  Text('to',style: bodyStyle,),
                  Text('Dog Worlds',style: bodyStyle,),
                ],
              ),
            
        ),
      )),
    );
  }
}