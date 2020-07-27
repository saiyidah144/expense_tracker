import 'package:flutter/material.dart';
import 'home_widget.dart';

class RewardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: new ListView(
            children: <Widget>[
              Column(
                  children: <Widget>[
                    new Container(
                      color: Colors.blueGrey,
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: new Stack(
                                fit: StackFit.loose, children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 120.0, right: 100, left: 100),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 35.0,
                                        child: new Icon(
                                          Icons.card_giftcard,
                                          size: 35.0,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )),
                            ]),
                          )
                        ],
                      ),
                    ),
                    new Container(
                      child: new Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: <Widget>[
                                  Text("UNLOCK ALL KEYS TO GET REWARD CODE RIGHT NOW" , style: TextStyle( fontSize: 14, color: Colors.black),),
                                  Spacer(),
                                ],
                              ),

                            ),
                          ]),
                    ),
                    new Container(
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon (Icons.lock, size: 50,),
                              Spacer(),
                              Icon(Icons.lock, size: 50,),
                              Spacer(),
                              Icon(Icons.lock, size: 50,),
                              Spacer(),
                              Icon(Icons.lock, size: 50,),
                              Spacer(),
                              Icon(Icons.lock, size:50,),
                              Spacer(),
                            ],
                          )
                      ),
                    ),
                  ]),
              new Container(
                child: new Column(
                    children: <Widget>[
                      new RaisedButton(
                          child: new Text('Click here to view Code'),
                          onPressed: (){
                          showAlertDialog(context);
                          }
                        //_loginPressed,
                      ),
                    ]),
              ),
              new Container(
                  child: new Column(
                      children: <Widget>[
                        new RaisedButton(
                            child: new Text('Back'),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            }
                        ),
                      ])
              ),
            ])
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Congratulations, you've been rewarded!"),
    content: Text("Enjoy 30% OFF with GrabFood, with minimum spend of RM25. "
        "Use promo code: BELANJAWANKU "),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}