import 'package:flutter/material.dart';
import 'package:demo_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon', '楽天', 'Yahoo', 'Google'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_demo app"),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.key),
                title: Text(titleList[index]),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context) => NextPage(titleList[index])));
                },
              ),
              //線を引く
              Divider(
                height: 0,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add('Udemy');
          print(titleList);
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
