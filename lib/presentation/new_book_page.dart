import 'package:flutter/material.dart';

class NewBookPage extends StatefulWidget {
  // Class Constructor
  // @param key: Key
  // @param title: String
  const NewBookPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<NewBookPage> createState() => _NewBookPageState();
}

class _NewBookPageState extends State<NewBookPage> {
  dynamic _bookName = "Unsaved Book";

  void _saveBook() {
    setState(() {
      _bookName = "Saved book!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '<Fields to add new book />',
            ),
            Text(_bookName),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveBook,
        hoverColor: Colors.green,
        tooltip: 'Add book',
        child: const Icon(Icons.save),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
