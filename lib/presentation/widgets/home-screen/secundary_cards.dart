import 'package:flutter/material.dart';

class SecundaryCard extends StatelessWidget {
  final String label;
  final double money;
  final double elevation;
  final bool isIncome;

  const SecundaryCard({
    super.key,
    required this.label,
    required this.money,
    required this.elevation,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    final Color mainColor = (isIncome) ? Colors.green : Colors.red;
    final IconData icono = (isIncome) ? Icons.trending_up : Icons.trending_down;
    return Card(
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          decoration: BoxDecoration(
            border: Border.all(color: mainColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Column(
            children: [
              Row(
                spacing: 16,
                children: [
                    Icon(icono, color: mainColor, size: 36),
                    Column(children: [
                      Text(label, textAlign: TextAlign.start, style: TextStyle(fontSize: 22, color: mainColor)),
                      Text('\$$money' , style: TextStyle(fontSize: 18, color: mainColor))
                    ],)
                ],
              ),
              Text("+ 5,25 vs este mes", style: TextStyle(color: mainColor))
            ],
          )
        )
      ),
    );
  }
}
