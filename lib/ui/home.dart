import 'package:flutter/material.dart';
import 'package:personal_expenses/model/chart_bar.dart';
import 'package:personal_expenses/model/transaction.dart';
import 'package:personal_expenses/ui/transaction_list.dart';

class Home extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
        id: '1', name: "New Shoes", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: '2', name: "New Clothes", amount: 69.99, dateTime: DateTime.now()),
    Transaction(
        id: '3', name: "Bazar", amount: 79.99, dateTime: DateTime.now()),
    Transaction(
        id: '4', name: "Bed sheet", amount: 49.99, dateTime: DateTime.now()),
    Transaction(id: '5', name: "Food", amount: 59.99, dateTime: DateTime.now()),
    Transaction(
        id: '1', name: "New Shoes", amount: 99.99, dateTime: DateTime.now()),
    Transaction(
        id: '2', name: "New Clothes", amount: 69.99, dateTime: DateTime.now()),
    Transaction(
        id: '3', name: "Bazar", amount: 79.99, dateTime: DateTime.now()),
    Transaction(
        id: '4', name: "Bed sheet", amount: 49.99, dateTime: DateTime.now()),
    Transaction(id: '5', name: "Food", amount: 59.99, dateTime: DateTime.now()),
  ];

  List<ChartBar> chartBars = [
    ChartBar(amount: 200, day: 'S', percentage: 20),
    ChartBar(amount: 3, day: 'S', percentage: 30),
    ChartBar(amount: 4, day: 'M', percentage: 10),
    ChartBar(amount: 5, day: 'T', percentage: 40),
    ChartBar(amount: 6, day: 'W', percentage: 50),
    ChartBar(amount: 7, day: 'T', percentage: 60),
    ChartBar(amount: 8, day: 'F', percentage: 70),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Personal Expenses')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...chartBars.map((chartBar) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text('\$${chartBar.amount}'),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                width: 10,
                                decoration: BoxDecoration(border: Border.all()),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(chartBar.day),
                          ],
                        ),
                      );
                    })
                  ],
                )
                // ListView.separated(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: chartBars.length,
                //     separatorBuilder: (context, index) {
                //       return SizedBox(
                //         width: 10,
                //       );
                //     },
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Column(
                //           children: [
                //             Text('\$${chartBars[index].amount}'),
                //             Expanded(
                //               child: Container(
                //                 width: 5,
                //                 decoration: BoxDecoration(border: Border.all()),
                //               ),
                //             ),
                //             Text(chartBars[index].day),
                //           ],
                //         ),
                //       );
                //     }),
                ),
          ),
          TransactionList(
            transactions: transactions,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
