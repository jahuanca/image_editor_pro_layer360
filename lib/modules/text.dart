import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextEditor extends StatefulWidget {
  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Color(0xFF009ee0),
        actions: <Widget>[
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignLeft), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignCenter), onPressed: () {}),
          new IconButton(
              icon: Icon(FontAwesomeIcons.alignRight), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Ingrese su mensaje",
                    hintStyle: TextStyle(color: Colors.black),
                    alignLabelWithHint: true,
                  ),
                  scrollPadding: EdgeInsets.all(20.0),
                  keyboardType: TextInputType.multiline,
                  maxLines: 99999,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  autofocus: true,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: new FlatButton(
            onPressed: () {
              Navigator.pop(context, name.text);
            },
            color: Color(0xFF009ee0),
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: new Text(
              "Agregar texto",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white),
            )),
      ),
    );
  }
}
