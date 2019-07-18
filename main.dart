import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup's & Dialog's"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

//Button for popup dialog
            RaisedButton(
              child: Text("Show Popup !!"),
              onPressed: () {
                _popupDialog();
              },
              color: Colors.green,
            ),

            Divider(
              color: Colors.transparent,
            ),

//Button for bottom dialog
            RaisedButton(
              child: Text("Show BottomDialog !!"),
              onPressed: () {
                _bottomDialog();
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

//dilaog here

  void _bottomDialog() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
              height: 350.0,                   //you can adjust the height of the bottom dialog
              padding: EdgeInsets.all(
                  15.0),                       //and even make  the upper corner border rounded too
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Actions:",style: TextStyle(fontSize: 30.0),),
                  Divider(color: Colors.grey,height: 30.0,),
                  Divider(color: Colors.transparent,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    Icon(Icons.adb,size: 50.0,),
                    Icon(Icons.add_alarm,size: 50.0,),
                    Icon(Icons.add_call,size: 50.0,),
                    Icon(Icons.add_location,size: 50.0),
                  ],),
                  Divider(color: Colors.transparent,height: 30.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    Icon(Icons.playlist_add_check,size: 50.0,),
                    Icon(Icons.face,size: 50.0,),
                    Icon(Icons.zoom_in,size: 50.0,),
                    Icon(Icons.sd_card,size: 50.0),
                  ],),
                  Divider(color: Colors.transparent,height: 30.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    Icon(Icons.dashboard,size: 50.0,),
                    Icon(Icons.data_usage,size: 50.0,),
                    Icon(Icons.format_align_justify,size: 50.0,),
                    Icon(Icons.g_translate,size: 50.0),
                  ],),

                ],
              ));
        });
  }

//popup dialog
  Future<bool> _popupDialog() {
      return showDialog(                      //reason for using future as it is the only one that returns ....
      context: context,                       // you can use void without return also...as in the bootomDialog used...
      builder: (context) => new AlertDialog(
        title: Text("This is a Popup !!!"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done_all),
            onPressed: ()
            {
              Navigator.of(context).pop(true);    //this will make the sccren to display
            },                                     //popup define what has to be poped wwhen it is been clicked..
          )
        ],
      ),
    );
  }
}
