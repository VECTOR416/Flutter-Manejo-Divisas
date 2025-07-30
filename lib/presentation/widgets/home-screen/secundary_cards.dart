import 'package:flutter/material.dart';

class SecundaryCard extends StatelessWidget {
  final String label;
  final double money;
  final Color color;
  final double elevation;
  const SecundaryCard({super.key, required this.label, required this.money, required this.color, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              spacing: 10,
              children: [
                Icon(Icons.trending_up, color: color),
                Column(
                  children: [
                    Text(label, style: TextStyle(fontSize: 20)),
                    Text(
                      '$money',
                      style: TextStyle(fontSize: 20, color: color),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




 

