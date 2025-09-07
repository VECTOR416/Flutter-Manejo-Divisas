import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainTitle extends ConsumerStatefulWidget {
  const MainTitle({super.key});

  @override
  createState() => _MainTitleState();
}

class _MainTitleState extends ConsumerState<MainTitle> {
  
  @override
  void initState(){
    super.initState();
    //ref.read(getAcountProvider.notifier).loadAcount(1);
  }


  @override
  Widget build(BuildContext context) {

    //final usedAcount = ref.watch(getAcountProvider);
  
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Color(0xFF5337F5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.attach_money, color: Colors.white, size: 48),
              Column(
                children: [
                  Text(
                    "FinanceApp",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Tu dinero, tu control',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          _BalanceContainer(),
        ],
      ),
    );
  }
}

class _BalanceContainer extends StatelessWidget {
  const _BalanceContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xFF5d52f8),
      ),
      child: Column(
        children: [
          Text('Balance Total:', style: TextStyle(color: Colors.white)),
          Text(
            '\$2850.50',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.trending_up, color: Colors.green[300], weight: 5),
              Text(
                "+12.5% este mes",
                style: TextStyle(
                  color: Colors.green[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}