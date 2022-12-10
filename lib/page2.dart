import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int index = 0;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      if(index == 0) index =1;
      else index = 0;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff3B4054),
        body: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 40),
          child: Column(
            children: [
              SizedBox(
                height: 650,
                child: PageView(
                  onPageChanged: (e){
                    index = e;
                    setState(() {

                    });
                  },
                  children: [
                    Column(
                      children: [
                        Image.asset('photo_1.png'),
                        SizedBox(height: 80,),
                        Text("The Simple Way to", style: TextStyle(color:Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
                        SizedBox(height: 17,),
                        Text("find the best! 👍", style: TextStyle(color:Color(0xffE0E5EC), fontSize: 24, fontWeight: FontWeight.w600),),
                        SizedBox(height: 45,),
                        Text("Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.", style: TextStyle(color:Color(0xffC8D2DE), fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        SizedBox(height: 109,),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 36.0),
                          child: Image.asset('photo_2.png'),
                        ),
                        SizedBox(height: 131),
                        Text("The Best Design", style: TextStyle(color:Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
                        SizedBox(height: 17,),
                        Text("Strategy! ✍️", style: TextStyle(color:Color(0xffE0E5EC), fontSize: 24, fontWeight: FontWeight.w600),),
                        SizedBox(height: 45,),
                        Text("Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.", style: TextStyle(color:Color(0xffC8D2DE), fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        SizedBox(height: 109,),
                  ],
                ),
                    ]),
              ),

              Row(
                children: [
                  SizedBox(width: 145,),
                  AnimatedContainer(duration: Duration(milliseconds: 700),
                    width: 32,
                    height: index == 0 ? 8 : 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        color: index == 0 ? Color(0xff5D81FD) : Color(0xffD6DFFF)
                    ),
                  ),
                  SizedBox(width: 12,),
                  AnimatedContainer(duration: Duration(milliseconds: 700),
                    width: 32,
                    height: index == 0 ? 4 : 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        color: index == 0 ? Color(0xffD6DFFF) : Color(0xff5D81FD)
                    ),
                  ),
                  SizedBox(width: 100,),
                  Text("Next", style: TextStyle(color:Color(0xffC8D2DE), fontWeight: FontWeight.w400, fontSize: 16),)
                ],
              )
            ],
          ),
        )
    ));
  }
}
