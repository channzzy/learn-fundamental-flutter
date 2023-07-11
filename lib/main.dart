import 'package:flutter/material.dart';
import 'package:learn2/example_slivers.dart';
import 'package:learn2/gesture_detection.dart';
import 'package:learn2/http_package/album_page.dart';
import 'package:learn2/layout_constraints.dart';
import 'package:learn2/material_design.dart';
import 'package:learn2/slivers.dart';
import 'package:learn2/statemanagement/statemanagement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      title: 'Belajar Fundamental Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/layout_constraints': (context) => const LayoutConstraints(),
        '/material_design': (context) => const MaterialDesign(),
        '/gesture_detection': (context) => const GestureDetection(),
        '/slivers': (context) => const Slivers(),
        '/example_slivers': (context) => const LearnSliver(),
        '/statemanagement_setstate': (context) =>
            const StateManagementSetState(),
        '/album_page': (context) => const AlbumPage(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Fundamental FLutter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/layout_constraints');
                      },
                      child: Text('Layout Constraints')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/material_design');
                      },
                      child: Text('Material Design')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/gesture_detection');
                      },
                      child: Text('Gesture Decetor')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/slivers');
                      },
                      child: Text('Silvers')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/example_slivers');
                      },
                      child: Text('Latihan: Sliver List & Sliver Grid')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/statemanagement_setstate');
                      },
                      child: Text('Latihan : State Management')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/album_page');
                      },
                      child: Text('Latihan : HTTP Package')),
                ],
              ),
            )),
      ),
    );
  }
}
