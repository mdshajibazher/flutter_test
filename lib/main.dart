import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo title',
        home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Title'),
          ),
          body: Column(
            children: [
              Container(
                child: Image.network('https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg',
                  width: double.infinity,
                ),
              ),
              TitleSection(),
              IconSection(),
              Container(
                padding: const EdgeInsets.all(32),
                child: const Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.',
                  softWrap: true,
                ),
      )
            ],
          ),
        ));
  }
}

class IconSection extends StatelessWidget {
  const IconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:    EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.black, Icons.call,'Call'),
            _buildButtonColumn(Colors.black, Icons.near_me,'Locate'),
            _buildButtonColumn(Colors.black, Icons.share,'Share'),
          ],
    ));
  }

  Column _buildButtonColumn( color,  icon, label){
    return  Column(
      children:   [
        Icon(icon,color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color
            ),
          ),
        )
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41'),

          ]
      )
    );
  }
}
