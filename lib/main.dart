import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({Key? key}) : super(key: key);
  mySnackbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {mySnackbar('Photos Uploaded Successfully!', context);},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
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
                    onPressed: () {
                      mySnackbar('Clicked on photo!', context);
                    },
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
                          backgroundColor: Colors.white38,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {
                      mySnackbar('Clicked on photo!', context);
                    },
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
                          backgroundColor: Colors.white38,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {
                      mySnackbar('Clicked on photo!', context);
                    },
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
                          backgroundColor: Colors.white38,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {
                      mySnackbar('Clicked on photo!', context);
                    },
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
                          backgroundColor: Colors.white38,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  )
                ]),
                Stack(children: [
                  OutlinedButton(
                    onPressed: () {
                      mySnackbar('Clicked on photo!', context);
                    },
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
                          backgroundColor: Colors.white38,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                  )
                ]),
              ],
            ),
            myListViewContent(),
          ],
        ),
      ),
    );
  }
}

class myListViewContent extends StatelessWidget {
  myListViewContent({Key? key}) : super(key: key);

  List team = [
    {"img": "a", "name": "John Doe", "job": "Graphic Designer"},
    {"img": "b", "name": "Mark Dawson", "job": "Mobile Developer"},
    {"img": "a", "name": "Eric Shawn", "job": "Cloud Engineer"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      height: 500.0,
      child: ListView.builder(
        itemCount: team.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('images/${team[index]["img"]}.png'),
            title: Text('${team[index]['name']}'),
            subtitle: Text('${team[index]['job']}'),
          );
        },
      ),
    );
  }
}
