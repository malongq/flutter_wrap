//import 'package:flutter/material.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'flutter 流式布局',
//      theme: ThemeData.light(),
//      home: WrapDemo(),
//    );
//  }
//}
//
//class WrapDemo extends StatefulWidget {
//  @override
//  _WrapDemoState createState()=> _WrapDemoState();
//}
//
//class _WrapDemoState extends State<WrapDemo> {
//
//  List<Widget> list;
//
//  //初始化状态值，给list添加值，这时候调用一个自定义方法addButton
//  @override
//  void initState() {
//    super.initState();
//    list = List<Widget>()..add(addButton());
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    //获取屏幕宽高
//    final width = MediaQuery.of(context).size.width;
//    final height = MediaQuery.of(context).size.height;
//
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text(
//          'flutter 流式布局',
//          style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold)
//        ),
//      ),
//      body: Center(
//          child: Container(
//            color: Colors.lightBlue.withOpacity(0.5),
//            width: width,
//            height: height/2,
//            child: Wrap(
//              children: list,
//              spacing: 40.0,//间距
//            ),
//          ),
//      ),
//    );
//  }
//
//  Widget addButton() {
//    return GestureDetector(
//      onTap: (){
//        if(list.length<9){
//          setState(() {
//            list.insert(list.length-1, addPhoto());
//          });
//        }
//      },
//      child: Padding(
//        padding: EdgeInsets.all(8.0),
//        child: Container(
//          width: 80.0,
//          height: 80.0,
//          color: Colors.grey,
//          child: Icon(Icons.add),
//        ),
//      ),
//    );
//  }
//
//  Widget addPhoto() {
//    return Padding(
//      padding: EdgeInsets.all(8.0),
//      child: Container(
//        width: 80.0,
//        height: 80.0,
//        color: Colors.amberAccent,
//        child: Center(
//          child: Text('照片'),
//        ),
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '流式布局二次练习',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: NewWrap(),
    );
  }
}

class NewWrap extends StatefulWidget {
  @override
  _NewWrapState createState()=> _NewWrapState();
}

class _NewWrapState extends State<NewWrap> {

  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(addButton());
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('流式布局二次练习'),
      ),
      body: Center(
        child: Container(
          width: width,
          height: height/2,
          color: Colors.deepPurpleAccent.withOpacity(0.5),
          child: Wrap(
            children: list,
            spacing: 30.0,
          ),
        ),
      ),
    );
  }

  Widget addButton() {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.grey,
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
      ),
      onTap: (){
        if(list.length<9){
          setState(() {
            list.insert(list.length-1, Photo());
          });
        }
      },
    );
  }

  Widget Photo() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }

}