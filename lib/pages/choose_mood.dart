import 'package:coctail/helpers/audio.dart';
import 'package:coctail/models/recipe_item.dart';

import '../helpers/colors.dart';
import 'package:flutter/material.dart';

class Mood extends StatefulWidget {
  const Mood({super.key});

  @override
  State<Mood> createState() => _MoodState();
}

class _MoodState extends State<Mood> {
  bool isSwitched = true;
  var mood = 0;
  bool music = true;
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: pinkMain,
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          width: myWidth,
          height: myHeight,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(pinkMain),
                        shadowColor: MaterialStatePropertyAll<Color>(pinkMain),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/full');
                      },
                      child: Icon(
                        Icons.list_alt,
                        color: blueBackground,
                      ),
                    ),
                    SizedBox(
                      width: myWidth * 0.5,
                    ),
                    SizedBox(child: Icon(Icons.music_note, color: greenNY)),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          (isSwitched = value)
                              ? checkFoneMusic(music = true)
                              : checkFoneMusic(music = false);
                        });
                      },
                      activeTrackColor: greenNY,
                      activeColor: pinkMain,
                      inactiveTrackColor: redNY,
                      inactiveThumbColor: pinkMain,
                    ),
                    SizedBox(
                        child: Icon(
                      Icons.music_off,
                      color: redNY,
                    )),
                  ],
                ),
                Text("У тебя новогоднее настроение?  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blueBackground,
                        // fontFamily: "Exo2",
                        fontFamily: "Pacifico",
                        fontSize: 40,
                        fontWeight: FontWeight.normal)),
                const Center(
                    child: Image(
                  image: AssetImage("assets/images/party.png"),
                )),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(blueBackground),
                    shadowColor: MaterialStatePropertyAll<Color>(pinkMain),
                  ),
                  onPressed: () {
                    var mood = 1;
                    Navigator.pushNamed(context, '/choosecoctail');
                  },
                  child: const Text(
                    'Совсем не новогоднее',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Exo2",
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(blueBackground),
                    shadowColor: MaterialStatePropertyAll<Color>(pinkMain),
                  ),
                  onPressed: () {
                    var mood = 2;
                    Navigator.pushNamed(context, '/choosecoctail');
                  },
                  child: const Text(
                    'Чувствую праздники, но нужна помощь!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Exo2",
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(blueBackground),
                    shadowColor: MaterialStatePropertyAll(pinkMain),
                  ),
                  onPressed: () {
                    var mood = 3;
                    Navigator.pushNamed(context, '/choosecoctail');
                  },
                  child: const Text(
                    'Да! Полный джинглбеллс!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Exo2",
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
