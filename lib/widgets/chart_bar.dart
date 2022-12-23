import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;
  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p0, p1) {
      return Column(
        children: [
          Container(
              height: p1.maxHeight*0.15,
              child: FittedBox(
                  child: Text('\$${spendingAmount.toStringAsFixed(0)}'))),
          SizedBox(
            height: p1.maxHeight*0.05,
          ),
          Container(
            height: p1.maxHeight*0.6,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Color.fromARGB(1, 220, 220, 220),
                      borderRadius: BorderRadius.circular(10)),
                ),
                FractionallySizedBox(
                  heightFactor: spendingPctOfTotal,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          ),
          SizedBox(
            height: p1.maxHeight*0.05,
          ),
          Container(
            height: p1.maxHeight*0.15,
            child: FittedBox(child: Text(label)))
        ],
      );
    });
  }
}
