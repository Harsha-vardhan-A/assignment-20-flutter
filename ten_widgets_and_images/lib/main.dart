// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryIconTheme: IconThemeData.fallback(),
        // MainAxisAlignment.center,
      ),
      home: const MyHomePage(title: 'Home Page',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  var label="Today";
  // List<DropdownMenuItem<String>> itemslist = [
  //   "java",
  //   "flutter",
  // ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // titleTextStyle: MaterialStateTextStyle.style(b),
        title:Row(
          
          children: <Widget>[
            
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.arrow_back,),
              mouseCursor: MouseCursor.defer,
              hoverElevation: double.maxFinite,
              
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.person,size: 30,),
            SizedBox(
              width: 10,
            ),
            Text("User",),
            SizedBox(
              width: 100,
            ),
            const Icon(Icons.videocam,size: 30,),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.call ,size: 30,),
            SizedBox(
              width: 10,
            ),
            // ignore: prefer_const_constructors
            PopupMenuButton(
              itemBuilder:(BuildContext context){
                return [];
              },
              
              )
          ],
          // child:<widget>[
          //   Text(
          //     child:Icon(Icon.video_call);
          //   )
          // ]
          )
        // floatingActionButton:FloatingActionButton(onPressed: ,)
        
      ),
      body: SingleChildScrollView(
      
        child: Column(
          
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              // alignment: Alignment.topRight,
              hint: const Text("choose option"),
              items: <String>["java","flutter","python"].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value){}
            ),
            SizedBox(
              // height: 10,
              // width: 20,
              child: InputChip(label: Text(label) ,labelStyle: const TextStyle( backgroundColor: Color.fromRGBO(24, 113, 202, 0.4),color: Color.fromRGBO(7, 7, 7, 0.698),fontSize: 20,),labelPadding:const EdgeInsets.all(0),),
            ),
            InputDatePickerFormField(firstDate: DateTime.now(), lastDate:DateTime(2024),),
            Text(
              "enter your data",
              style: TextStyle(fontSize: 20,color: Color.fromRGBO(195, 82, 80, 0.769),),
            ),
            TextField(
              textAlign: TextAlign.center,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(border: OutlineInputBorder(),  ),
            ),
            Container(  
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(1), 
              child: FloatingActionButton(  
                hoverColor: Color.fromRGBO(200, 34, 233, 0.6),
                child: Text('SignUp', style: TextStyle(fontSize: 14),),  
                onPressed: () {},  
              ),  
            ), 
            Image.asset('assets/images/movie.png',height: 70,width: 70,),
            Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.send_and_archive),
      ),
    );
  }
}
