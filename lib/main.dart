import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'a';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text('Drawer Header'),
      //       ),
      //       ListTile(
      //         title: const Text('Item 1'),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         title: const Text('Item 2'),
      //         onTap: () {},
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_drop_down_outlined),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['a', 'b', 'c', 'd']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '2021',
                ),
                Text(
                  'Wednesday',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Aug 18',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_left),
                    Text('August 2021'),
                    Icon(Icons.arrow_right),
                  ],
                ),
                // GridView.count(crossAxisCount: 7, shrinkWrap: true, children: [
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('S'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('M'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('T'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('W'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('T'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('F'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Container(
                //       child: Text('S'),
                //     ),
                //   ),
                // ]),
                GridView.count(
                  crossAxisCount: 7,
                  shrinkWrap: true,
                  children: List.generate(
                    31,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: Text(index.toString()),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
