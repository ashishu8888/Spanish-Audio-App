import 'package:flutter/material.dart';
import 'number_audio.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numberList = [
    NumberAudio(
        audioURI: "one.wav", buttonColor: Colors.blue, buttonText: "One"),
    NumberAudio(
        audioURI: "two.wav", buttonColor: Colors.red, buttonText: "two"),
    NumberAudio(
        audioURI: "three.wav", buttonColor: Colors.pink, buttonText: "three"),
    NumberAudio(
        audioURI: "four.wav", buttonColor: Colors.purple, buttonText: "four"),
    NumberAudio(
        audioURI: "five.wav", buttonColor: Colors.orange, buttonText: "five"),
    NumberAudio(
        audioURI: "six.wav", buttonColor: Colors.green, buttonText: "six"),
    NumberAudio(
        audioURI: "seven.wav", buttonColor: Colors.yellow, buttonText: "seven"),
    NumberAudio(
        audioURI: "eight.wav", buttonColor: Colors.lime, buttonText: "eight"),
    NumberAudio(
        audioURI: "nine.wav", buttonColor: Colors.brown, buttonText: "nine"),
    NumberAudio(
        audioURI: "ten.wav", buttonColor: Colors.indigo, buttonText: "ten"),
  ];

  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spanish Number')),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Image(image: AssetImage('images/logo.png')),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.0,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: numberList.length,
                      itemBuilder: (context, i) {
                        return SizedBox(
                          height: 30,
                          width: 30,
                          child: RaisedButton(
                            onPressed: () {
                              return play(numberList[i].audioURI!);
                            },
                            color: numberList[i].buttonColor,
                            child: Text(
                              numberList[i].buttonText!,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
