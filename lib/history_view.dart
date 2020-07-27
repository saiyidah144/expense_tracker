import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/constant.dart';

class HistoryView extends StatefulWidget {
  @override
  _HistoryViewState createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {

  bool closeTopContainer = false;
  double topContainer = 0;
  List<Widget> itemsData = [];
  void getPostsData(){
    List<dynamic> responseList = EXPENSE_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["Type"],
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\R\M ${post["price"]}",
                      style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: new Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                //      controller: controller,
                  itemCount: itemsData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return itemsData[index];
                  }),
            )),
      ),

    );
  }


}