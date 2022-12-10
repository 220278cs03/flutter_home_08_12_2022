import 'package:flutter/material.dart';

import 'page2.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Page2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:Colors.white,
        child: Center(
          child:Image.asset('logo.png')
        )
      ),
    ));
  }
}
