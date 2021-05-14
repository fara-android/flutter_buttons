import 'package:flutter/material.dart';

enum MenuOption { Send, Draft, Discard }

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String valueChoose;
  List list = ["1", "2", "3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons"),
          centerTitle: true,
          actions: [
            buildPopUp(),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildFlatButton(),
              buildRaisedButton(),
              buildFAB(),
              buildDropDownBtn(),
              buildIconBtn(),
              buildInKwellBtn(),
              buildOutLineBtn()
            ],
          ),
        ));
  }

  Widget buildFlatButton() {
    return FlatButton(
      color: Colors.red,
      textColor: Colors.white,
      onPressed: () {
        print("FlatButton");
      },
      child: Text("FlatButton"),
    );
  }

  Widget buildRaisedButton() {
    return RaisedButton(
      // onLongPress: (){

      //   print("Raised Long pressed");
      // },
      color: Colors.blue,
      child: Text("RaisedButton"),
      onPressed: () {
        print("Raised Button");
      },
    );
  }

  Widget buildFAB() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        focusColor: Colors.red,
        hoverColor: Colors.green,
        splashColor: Colors.yellow,
        backgroundColor: Colors.brown,
        onPressed: () {
          print("Fab pressed");
        });
  }

  Widget buildIconBtn() {
    return IconButton(
      icon: Icon(Icons.add_a_photo),
      onPressed: () {
        print("Icon button pressed");
      },
    );
  }

  Widget buildDropDownBtn() {
    return DropdownButton(
      icon: Icon(Icons.arrow_drop_down),
      value: valueChoose,
      iconSize: 48,
      dropdownColor: Colors.grey,
      isExpanded: false,
      onChanged: (newValue) {
        setState(() {
          valueChoose = newValue;
          print("Chosen value is ");
          print(valueChoose);
        });
      },
      items: list.map((itemValue) {
        return DropdownMenuItem(
          child: Text(itemValue),
          value: itemValue,
        );
      }).toList(),
    );
  }

  Widget buildInKwellBtn() {
    return InkWell(
      onTap: () {
        print("Inkwell Pressed");
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.blue),
        child: Text(
          "HelloWorld",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget buildPopUp() {
    return PopupMenuButton<MenuOption>(
        color: Colors.grey,
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<MenuOption>>[
            PopupMenuItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.send), Text("Send")],
              ),
              value: MenuOption.Send,
            ),
            PopupMenuItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.drafts), Text("Draft")],
              ),
              value: MenuOption.Draft,
            ),
            PopupMenuItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(Icons.cancel), Text("Discard")],
              ),
              value: MenuOption.Discard,
            )
          ];
        });
  }

  Widget buildOutLineBtn() {
    return OutlinedButton(
        onPressed: () {
          print("Outline pressed");
        },
        child: Text("Outline button"));
  }
}
