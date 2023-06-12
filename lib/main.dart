import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);
  mySnackbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Center(
                child: Text(
                  'Welcome to My Photo Gallery!',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
              ),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 10.0,
              children: [
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {mySnackbar('Clicked on photo!', context);},
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 150,
                      width: 150.0,
                    ),
                  ),
                  // Text('Caption'),
                  const Positioned(
                    bottom: 5.0,
                    left: 35.0,
                    child: Text(
                      'Captioned',
                      style: TextStyle(
                          backgroundColor: Colors.white38, color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {mySnackbar('Clicked on photo!', context);},
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 150,
                      width: 150.0,
                    ),
                  ),
                  // Text('Caption'),
                  const Positioned(
                    bottom: 5.0,
                    left: 35.0,
                    child: Text(
                      'Captioned',
                      style: TextStyle(
                          backgroundColor: Colors.white38, color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {mySnackbar('Clicked on photo!', context);},
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 150,
                      width: 150.0,
                    ),
                  ),
                  // Text('Caption'),
                  const Positioned(
                    bottom: 5.0,
                    left: 35.0,
                    child: Text(
                      'Captioned',
                      style: TextStyle(
                          backgroundColor: Colors.white38, color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {mySnackbar('Clicked on photo!', context);},
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 150,
                      width: 150.0,
                    ),
                  ),
                  // Text('Caption'),
                  const Positioned(
                    bottom: 5.0,
                    left: 35.0,
                    child: Text(
                      'Captioned',
                      style: TextStyle(
                          backgroundColor: Colors.white38, color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {mySnackbar('Clicked on photo!', context);},
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 150,
                      width: 150.0,
                    ),
                  ),
                  // Text('Caption'),
                  const Positioned(
                    bottom: 5.0,
                    left: 35.0,
                    child: Text(
                      'Captioned',
                      style: TextStyle(
                          backgroundColor: Colors.white38, color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ]),

              ],
            ),

            // ListView()
          ],
        ),
      ),
    );
  }
}
