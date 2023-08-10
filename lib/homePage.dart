import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          title: const Text('My Counter App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
          centerTitle: true,
        ),
        body: Center(
          child: Text(counter.toString(),
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.w800)),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       counter++;
        //     });
        //   },
        //   child: Icon(Icons.add, size: 40),
        // ),

        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 33,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  // Add your first button's click logic here
                  setState(() {
                    counter++;
                  });
                  print('First floating action button was pressed.');
                },
                child: Icon(Icons.add),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 300,
              child: FloatingActionButton(
                onPressed: () {
                  // Add your second button's click logic here
                  setState(() {
                    counter--;
                  });
                  print('Second floating action button was pressed.');
                },
                child: Icon(Icons.remove),
              ),
            ),
          ],
        ));
  }
}
