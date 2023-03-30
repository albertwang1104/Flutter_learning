import 'package:flutter/material.dart';
import 'mongodb.dart';
import 'create_content.dart';

void main() async{
  runApp(const MyApp());
  MongoDataBase.connectDB();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class TextData {

}

class _MyHomePageState extends State<MyHomePage> {
  String _title = "", _content = "";
  ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 26),
      fixedSize: const Size(240, 60),
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            //   child: ListView(),
            // ),
            ElevatedButton(
              style: style,
              child: const Text('Create'),
              onPressed: () =>
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreatePage())),
            )
          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.

      ),
    );
  }
}

