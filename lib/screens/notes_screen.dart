import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  TextEditingController titleTxtCntrl = TextEditingController();
  TextEditingController descTxtCntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( title: const Text('Notes App')),
      body: Column(
        children: [
          // Input Title
          TextField(
            controller: titleTxtCntrl,
            decoration: const InputDecoration(
              hintText: 'Enter title',
              labelText: 'Title',
            ),
          ),
          // Input Description (optional)
          TextField(
            controller: descTxtCntrl,
            decoration: const InputDecoration(
              hintText: 'Enter description',
              labelText: 'Description',
            ),
          ),
          ElevatedButton(onPressed: () {}, child:  Text('Add')),
          // Add More Widgets as needed
          Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => ListTile(title: Text('title'),
            subtitle: Text('description'),
            trailing: Icon(Icons.delete),
          ),
          ),
          )
        ],
      ),
    );
  }
}
