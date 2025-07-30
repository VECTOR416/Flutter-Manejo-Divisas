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
    final Color boldColor = (isIncome) ? Color.fromRGBO(23, 89, 46, 1) : Color.fromRGBO(138, 13, 13, 1);
    final IconData icono = (isIncome) ? Icons.trending_up : Icons.trending_down;
    final Color backgroundColor = (isIncome) ? Color.fromRGBO(223, 251, 236, 255) : Color.fromRGBO(253, 232, 232, 255);
    return Card(
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: mainColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Column(
            children: [
              Row(
                spacing: 16,
                children: [
                    Icon(icono, color: boldColor, size: 36),
                    Column(children: [
                      Text(label, textAlign: TextAlign.start, style: TextStyle(fontSize: 12, color: boldColor, fontWeight: FontWeight.bold)),
                      Text('\$$money' , style: TextStyle(fontSize: 18, color: boldColor, fontWeight: FontWeight.bold))
                    ],)
                ],
              ),
              Text("+ 5,25% vs este mes", style: TextStyle(color: boldColor, fontSize: 12 ,fontWeight: FontWeight.bold))
            ],
          )
        )
      ),
    );
  }
}
