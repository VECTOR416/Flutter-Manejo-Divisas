import 'package:flutter/material.dart';
import 'package:manejo_divisas/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              MainTitle(),
              SizedBox(height: 8),
              CardsContainer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: CustomLineChart(),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Color(0xFF5337F5)),
                child: SizedBox(width: double.infinity, height: 500),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}


