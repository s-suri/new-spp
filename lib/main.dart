import 'package:flutter/material.dart';
import 'package:kri/counter.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  getIncrementData(BuildContext context)
  {
    context.read<Countersuri>().increment();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            primarySwatch: Colors.blue,
      ),
      home: const  MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(context.watch<Countersuri>().count.toString(),style: TextStyle(
          color: Colors.blueAccent
        ),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){},color: Colors.black,
        ),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (contet) => Rowsuri()));
          print("surender rathore");
        },
        child: Container(
          child: Center(
            child: Text("on click",style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),
            ),
          )
        ),
      ),
    );
  }
}




class MyHome extends StatefulWidget {
   String name;
   MyHome({required this.name});

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pop(context);
        },color: Colors.black,
        ),
        centerTitle: true,
        actions: [
          Text("rajesh")
        ],
      ),

      body: Container(
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(300),
            border: Border.all(color: Colors.white,width: 10)
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(50),
          child: Center(
            child: Text("surender kumar",maxLines: 2,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),),
          ),
        ),
      ),
    );
  }
}




class Columnsuri extends StatefulWidget {
  const Columnsuri({Key? key}) : super(key: key);

  @override
  _ColumnsuriState createState() => _ColumnsuriState();
}

class _ColumnsuriState extends State<Columnsuri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("column"),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pop(context);
        },color: Colors.black,
        ),
        centerTitle: true,
        actions: [
          Text("rajesh")
        ],
      ),

      body:  Container(
        child: Column(
          children:  [
            Text("surender kumar",style:  TextStyle(
              color:Colors.black,
              fontSize: 39,
              ),
            ),
            SizedBox(height: 30,),
            Text("surender kumar",style: TextStyle(
              color:Colors.black,
              fontSize: 39,
              ),
            ),
            Text("surender kumar",style: TextStyle(
              color:Colors.black,
              fontSize: 39,
              ),
            ),
            Text("surender kumar",style: TextStyle(
              color:Colors.black,
              fontSize: 39,
             ),
            ),
            Text("surender kumar",style: TextStyle(
              color:Colors.black,
              fontSize: 39,
             ),
            ),
          ],
        ),
      ),
    );
  }
}


class Rowsuri extends StatefulWidget {
  const Rowsuri({Key? key}) : super(key: key);

  @override
  _RowsuriState createState() => _RowsuriState();
}

class _RowsuriState extends State<Rowsuri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row"),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: (){
          Navigator.pop(context);
        },color: Colors.black,
        ),
        centerTitle: true,
        actions: [
          Text("rajesh")
        ],
      ),
      body: Container(
        child: Row(
          children: [
            Text("s ",style: TextStyle(
              color:Colors.black,
              fontSize: 39,

            ),),
            Text("k ",style: TextStyle(
              color:Colors.black,
              fontSize: 39,

            ),),
            Text("hs ",style: TextStyle(
              color:Colors.black,
              fontSize: 39,

            ),),
            Text("w ",style: TextStyle(
              color:Colors.black,
              fontSize: 39,

            ),),
            Text("w ",style: TextStyle(
              color:Colors.black,
              fontSize: 39,

            ),),
          ],
        ),
      ),
    );
  }
}



