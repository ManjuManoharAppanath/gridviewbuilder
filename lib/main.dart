import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List clr=[Colors.red,Colors.green,Colors.black,Colors.brown,Colors.blue];
  List icon=[Icons.person,Icons.home,Icons.book,Icons.network_cell,Icons.access_alarm];
  List iconclr=[Colors.blue,Colors.brown,Colors.green,Colors.black,Colors.red];
  List txt=['Person','Home','Book','Network','Alarm'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 4/2,
    ),
        itemCount: clr.length,
        itemBuilder: (context,int i){
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: clr[i],
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(icon[i],color: iconclr[i],size: 50,),
            Text(txt[i],style: TextStyle(fontSize: 20,color: Colors.white),),
          ],
          ),
        ),
        ),
        );
        }),);
  }
}
