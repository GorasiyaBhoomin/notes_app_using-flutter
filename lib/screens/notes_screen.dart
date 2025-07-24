import 'package:flutter/material.dart';
// Make sure Note class is defined in this path or fix the import path
import 'package:flutter_application_1/screens/models/notes.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  TextEditingController titleTxtCntrl = TextEditingController();
  TextEditingController descTxtCntrl = TextEditingController();
  List<Note> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes App')),
      body: Column(
        children: [
          // add
          TextField(
            controller: titleTxtCntrl,
            decoration: InputDecoration(
              hintText: 'Enter title',
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: descTxtCntrl,
            decoration: InputDecoration(
              hintText: 'Enter Description',
              labelText: 'Description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // add logic
              if (titleTxtCntrl.text.isNotEmpty &&
                  descTxtCntrl.text.isNotEmpty) {
                notes.add(
                  Note(
                    title: titleTxtCntrl.text,
                    description: descTxtCntrl.text,
                  ),
                );
                setState(() {});
              } else {}
            },
            child: Text('Add'),
          ),
          // display
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder:
                  (context, index) => ListTile(
                    title: Text('${notes[index].title}'),
                    subtitle: Text('${notes[index].description}'),
                    trailing: Icon(Icons.delete),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
