import 'package:flutter/material.dart';

TextEditingController titleController = TextEditingController();
TextEditingController contentController = TextEditingController();

class Article {
  String title;
  String content;
  Article(this.content, this.title);
}

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePage();
}

class _CreatePage extends State<CreatePage> {
  ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 26),
      fixedSize: const Size(240, 60));

  Future<void> _btnSave(String title, String content, BuildContext context) async{
    var dataMap = <String, String>{
        'title':title,
        'content':content};

    // todo: 將 dataMap 新增至資料庫
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('Create Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    controller: titleController,
                    autofocus: true,
                    decoration: const InputDecoration(
                        labelText: "Title",
                        hintText: "The title is...",
                        // prefixIcon: Icon(Icons.person)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    controller: contentController,
                    decoration: const InputDecoration(
                        labelText: "Content",
                        hintText: "Write something...",
                        // prefixIcon: Icon(Icons.lock)
                    ),
                  ),
                ),
              ],
            ),
              ElevatedButton(
                style: style,
                child: const Text('Save'),
                onPressed: () => {
                  _btnSave(titleController.text, contentController.text, context),
                  titleController.clear(),
                  contentController.clear(),
                }
              )
          ],
        ),
      )
    );
  }
}
