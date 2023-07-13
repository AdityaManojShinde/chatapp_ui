import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp Clone',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Text(
              "ChatApp UI",
              style: TextStyle(color: Colors.white),
            ),
          ],
        )),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/animeguy.png'),
              backgroundColor: Color.fromARGB(255, 59, 231, 76),
              minRadius: 25,
              maxRadius: 25,
            ),
            title: Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('mobile no.'),
            trailing: Icon(Icons.add_call),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 3,
            height: 50,
          );
        },
        itemCount: 25,
      ),
    );
  }
}
