import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
    final double porcentaje = 0.45;
    final double gastado = 649.50;
    final double restante = 793.83;
  const BudgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFF5337F5), 
                  child: Icon(Icons.track_changes, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Presupuesto del Mes",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Enero 2025", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Progreso", style: TextStyle(fontWeight: FontWeight.w500)),
                Text("${(porcentaje * 100).toInt()}%",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LinearProgressIndicator(
                value: porcentaje,
                minHeight: 10,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5337F5)),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${gastado.toStringAsFixed(2)} gastado"),
                Text("\$${restante.toStringAsFixed(2)} restante"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}