import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.dashboard),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(child: Text("Welcome to this course")),
      ),
    );
  }
}
