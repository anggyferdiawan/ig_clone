import 'package:flutter/material.dart';
import 'package:ig_clone/widgets/bubble_story.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<dynamic> users = [
    'Hazan',
    'Clara',
    'Joni',
    'Gabriel',
    'Joke',
    'Audi',
    'Bahadur',
    'Erwin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Instagram',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.favorite_outlined,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.send_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                );
              },
              itemCount: users.length,
            ),
            const Divider(height: 1)
          ],
        ));
  }
}
