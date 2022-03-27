//import 'package:csur/main.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('/Users/vaibhavsingh/csur/lib/assets/cam1.png',
              width: 300, height: 100),
          const SizedBox(height: 60),
          AutoSizeText(
            'Welcome to Cam-survilace',
            style: Theme.of(context).textTheme.headline4,
            maxLines: 1,
          ),
          const SizedBox(height: 20),
          AutoSizeText(
            'Please select an option',
            style: Theme.of(context).textTheme.headline4,
            maxLines: 1,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Camera Feeds'),
            onPressed: () {
              Navigator.pushNamed(context, '/camera');
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('camera view'),
            onPressed: () {
              Navigator.pushNamed(context, '/map');
            },
          ),
        ],
      ),
    );
  }
}
