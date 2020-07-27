import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/expense.dart';


class HomeView extends StatelessWidget{
  final List<Expense> expensesList = [
    Expense("FOOD", 30.00, 550.00),
    Expense("HOUSING", 250.90, 300.00),
    Expense("HEALTH", 25.00, 30.00),
    Expense("TRANSPORT", 199.00, 200.00),
    Expense("UTILITIES", 56.00, 100.00),
    Expense("SAVINGS", 250.00, 250.00),
    Expense("PERSONAL CARE", 20.00, 70.00),
    Expense("Ad Hoc/ One-Off", 30.00, 90.00),
    Expense("Social Participation", 140.00, 150.00),
    Expense("Discretionary Expenses", 50.00, 130.00),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: new ListView.builder(
              itemCount: expensesList.length,
              itemBuilder: (BuildContext context, int index) => buildExpenseCard(context, index)
          ),
        ),
    );
  }
  Widget buildExpenseCard (BuildContext context, int index){
    final expense = expensesList[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:<Widget>[
              Padding(padding: const EdgeInsets.only(top:8.0, bottom: 14.0),
                child: Row(children: <Widget>[
                  Text(expense.expenseType, style: new TextStyle(fontSize: 20.0),),
                  Spacer(),

                ]),
              ),

              Padding(padding: const EdgeInsets.only(top:8.0, bottom: 8.0, left: 25.0),
                child: Row(children: <Widget>[
                  Text("RM" , style: new TextStyle(fontSize: 50.0),),
                  Text( expense.expense.toStringAsFixed(2), style: new TextStyle(fontSize: 50.0),),
                  Spacer(),

                ]),
              ),

              Padding(padding: const EdgeInsets.only(top:8.0, bottom: 8.0, left: 25.0),
                child: Row(children: <Widget>[
                  Text("/", style: new TextStyle(fontSize: 30.0),),
                  Text("RM" , style: new TextStyle(fontSize: 30.0),),
                  Text(expense.budget.toStringAsFixed(2), style: new TextStyle(fontSize: 30.0),),
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}