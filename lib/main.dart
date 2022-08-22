import 'package:expence/model/Transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> transaction = [
    Transaction(
        id: 'aa',
        title: 'books',
        amount: 200,
        dateTime: DateTime.now()
    ),
    Transaction(
        id: 'bb',
        title: 'pens',
        amount: 50,
        dateTime: DateTime.now()
    )
  ];

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('My expence'),
      ),
      body:  Column(
        children: [
          ListView.builder(
            itemCount: transaction.length,
            itemBuilder: (BuildContext context, int index){
            return Expanded(
                child: ListTile(
                leading: Text('${transaction[index].id}'),
                title: Text('${transaction[index].title}'),
                subtitle: Text('${transaction[index].amount}'),
                trailing: Text('${transaction[index].dateTime}')
            ),

            );


                // Column(
                //   children: [
                //     Text('${transaction[index].title}', style: TextStyle(
                //       fontSize: 20, color: Colors.orange
                //     ),),
                //     Text('${transaction[index].amount},'),
                //     Text('${transaction[index].dateTime}')
                //   ],
                // );
              },
          ),
        ],
      ),
    );
  }
}
