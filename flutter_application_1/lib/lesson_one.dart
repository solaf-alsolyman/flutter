import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  buttonOnPressed(msg) {
    print('button Clicked! $msg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          // color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('Hello world!'),
                Text('Hello world!',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 35,
                        color: Colors.red[700],
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                          TextDecoration.overline
                        ]),
                        decorationColor: Colors.blue[900],
                        shadows: const [
                          Shadow(
                              color: Colors.yellow,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 7)
                        ])),
                const Text('Hello world'),
              ]),
              Row(children: [
                TextButton(onPressed: () {}, child: Text('A')),
                OutlinedButton(onPressed: () {}, child: Text('B')),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('C'),
                )
              ]),
              Row(children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.night_shelter),
                  label: const Text('A'),
                  autofocus: true,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.night_shelter),
                  label: Text('B'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.night_shelter,
                    //color: Colors.yellow,
                  ),
                  label: Text('c'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(5, 0, 10, 30)),
                      elevation: MaterialStateProperty.all(10)),
                )
              ]),
              Row(children: [
                //IconButton on Pressed
                IconButton(
                    onPressed: () => buttonOnPressed('Hello!'),
                    icon: const Icon(Icons.center_focus_weak_sharp)),
                IconButton(
                    onPressed: () => print('Button2 Clicked!'),
                    icon: const Icon(Icons.center_focus_weak_sharp))
              ]),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add'),
        icon: const Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          side: BorderSide(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
        ),
        splashColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
//              backgroundColor: Colors.teal,
          leading: const Icon(Icons.center_focus_weak_sharp),
          title: const Text('Home Page'),
          actions: const [Icon(Icons.center_focus_weak_sharp)]),
    );
  }
}
