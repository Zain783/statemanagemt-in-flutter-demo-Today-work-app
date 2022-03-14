
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              // topLeft: Radius.circular(20)
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Add',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 22, 116, 160)),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(' Today Tasks '),
                      // WavyAnimatedText(' '),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
              ],
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
