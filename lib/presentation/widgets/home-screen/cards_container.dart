import 'package:flutter/material.dart';
import 'package:manejo_divisas/presentation/widgets/home-screen/secundary_cards.dart';

class CardsContainer extends StatelessWidget {
  const CardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
            child: SecundaryCard(
              label: 'Ingresos:',
              money: 548.45,
              elevation: 5,
              isIncome: true,
            ),
          ),
          Expanded(
            child: SecundaryCard(
              label: 'Egresos:',
              money: 357.76,
              elevation: 5,
              isIncome: false,
            ),
          ),
        ],
      ),
    );
  }
}