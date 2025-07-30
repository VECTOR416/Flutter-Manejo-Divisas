import 'package:flutter/material.dart';
import 'package:manejo_divisas/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Principal"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 48.0,
                horizontal: 8.0,
              ),
              child: Column(
                children: [
                  _CardType1(label: 'label', elevation: 10),
                  Row(
                    children: [
                      Expanded(child: _CardType1(label: 'label', elevation: 10)),
                      Expanded(child: _CardType1(label: 'label', elevation: 10)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_outlined))),
            Align(
              alignment: Alignment.bottomLeft,
              child: Center(child: Text(label)),
            )
          ],
        ),
      ),
    );
  }
}
