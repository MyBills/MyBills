import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/NouraApp1/RoundedButton.dart';
import 'package:image_picker/image_picker.dart';

import 'Constent.dart';
import 'Note.dart';

class NoteScreen extends StatefulWidget {
  static final String routeName = '/note';
  Note note;

  NoteScreen(this.note);

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  Note note;
  String titleString = '';
  String DateString = '';
  String TotalString = '';
  String noteString = '';

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController controllerTitle;
  TextEditingController controllerDate;
  TextEditingController controllerTotal;
  TextEditingController controllerNote;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    note = widget.note;
    if (note != null) {
      titleString = note.title;
      DateString = note.dateL;
      TotalString = note.total;
      noteString = note.note;
    }

    controllerTitle =
        TextEditingController(text: note != null ? note.title : '');
    controllerDate =
        TextEditingController(text: note != null ? note.dateL : '');
    controllerTotal =
        TextEditingController(text: note != null ? note.total : '');
    controllerNote = TextEditingController(text: note != null ? note.note : '');
  }

  File _image;

  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          note != null ? 'Edit bill' : 'Add bill',
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () {
                getImage(false);
              }),
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              getImage(true);
            },
          ),

        ],
      ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: kSmallMargin,
          ),
          _image == null
              ? Container()
              : Image.file(_image, height: 300.0, width: 300.0),
          SizedBox(
            height: kSmallMargin,
          ),
          Padding(
            padding: EdgeInsets.all(kSmallMargin),
            child: TextField(
              controller: controllerTitle,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.drive_file_rename_outline) ,
                hoverColor: Colors.teal[400],
                border: OutlineInputBorder(),

                hintText: '  Title',
              ),
              onChanged: (value) {
                titleString = value;
              },
            ),
          ),
          SizedBox(
            height: kSmallMargin,
          ),
          Padding(
            padding: EdgeInsets.all(kSmallMargin),
            child: TextField(

              controller: controllerDate,
              textAlign: TextAlign.left,
              decoration: InputDecoration(

                prefixIcon: Icon(Icons.date_range) ,
                border: OutlineInputBorder(

                ),


                hoverColor: Colors.teal[400],
                hintText: ' Date',
              ),
              onChanged: (value) {
                titleString = value;
              },
            ),
          ),
          SizedBox(
            height: kSmallMargin,
          ),
          Padding(
            padding: EdgeInsets.all(kSmallMargin),
            child: TextField(
              controller: controllerTotal,
              textAlign: TextAlign.left,
              decoration: InputDecoration(

                prefixIcon: Icon(Icons.attach_money) ,
                border: OutlineInputBorder(),
                hoverColor: Colors.teal[400],
                hintText: 'Total',
              ),
              onChanged: (value) {
                TotalString = value;
              },
            ),
          ),
          SizedBox(
            height: kSmallMargin,
          ),
          Padding(
            padding: EdgeInsets.all(kSmallMargin),
            child: TextField(
              controller: controllerNote,
              textAlign: TextAlign.left,
              decoration:



              InputDecoration(

                  prefixIcon:  Icon(Icons.notes) ,
                border: OutlineInputBorder(),

                hoverColor: Colors.teal[400],
                hintText: 'Note',
              ),
              onChanged: (value) {
                noteString = value;
              },
            ),
          ),

          SizedBox(height: 100),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 42),
                    color: Colors.teal[400],
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                    onPressed: () {
                      saveClicked();
                      Navigator.pop(context);
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                    color: Colors.teal[400],
                    child: Text(
                      'Delete',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                    onPressed: () {
                      _firestore.collection('notes').doc(note.id).delete();
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  height: kSmallMargin,
                ),
              ],
            ),

        ],
      ),
    ),

    );
  }

  void saveClicked() {
    if (note == null) {
      _firestore.collection('notes').add({
        'title': titleString,
        'dateL': DateString,
        'total': TotalString,
        'note': noteString
      });
    } else {
      _firestore.collection('notes').doc(note.id).update({
        'title': titleString,
        'dateL': DateString,
        'total': TotalString,
        'note': noteString
      });
    }
  }
}
