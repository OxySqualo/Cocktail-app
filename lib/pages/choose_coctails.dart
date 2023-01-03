import '../helpers/colors.dart';
import 'package:flutter/material.dart';

class Coctail extends StatefulWidget {
  const Coctail({super.key});

  @override
  State<Coctail> createState() => _CoctailState();
}

class _CoctailState extends State<Coctail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pinkMain,
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(pinkMain),
                        shadowColor: MaterialStatePropertyAll<Color>(pinkMain),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/mood');
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: blueBackground,
                      ),
                    ),
                  ],
                ),
                Text("Наколдуй себе настроение! ",
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
                    Navigator.pushNamed(context, '/recipe');
                  },
                  child: const Text(
                    'Смешай свой коктейль!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Exo2",
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
