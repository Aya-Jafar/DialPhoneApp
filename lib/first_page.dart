import 'package:flutter/material.dart';
import 'package:task/model.dart';
import 'package:task/second_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  String inputNumber = '';
  List allNumbers = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Text(inputNumber,
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Color.fromARGB(255, 49, 49, 49))),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondRoute(allNumbers: allNumbers)),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 50, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add, size: 20, color: Color(0xff4adf78)),
                  Text(
                    'Add to contacts',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff4adf78)),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RowBuilder(listIndex: 0),
              // const SizedBox(
              //   height: 20,
              // ),
              RowBuilder(listIndex: 1),
              // const SizedBox(
              //   height: 20,
              // ),
              RowBuilder(listIndex: 2),
              // const SizedBox(
              //   height: 20,
              // ),
              RowBuilder(listIndex: 3),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.groups_outlined, size: 30),
                Container(
                  height: 77,
                  width: 77,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xff4adf78),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Icon(Icons.local_phone_rounded,
                      size: 37, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (inputNumber.length <= 10) {
                        inputNumber =
                            inputNumber.substring(0, inputNumber.length - 1);
                      }
                    });
                  },
                  child: const Icon(Icons.keyboard_double_arrow_left_rounded,
                      size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row RowBuilder({required int listIndex}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: NumberButtons.numbersButtons[listIndex]
          .map((e) => Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (inputNumber.length < 10) {
                          inputNumber += e.number;
                        }
                      });
                      if (inputNumber.length == 10 &&
                          !allNumbers.contains(inputNumber)) {
                        allNumbers.add(inputNumber);
                      }
                    },
                    child: Text(
                      e.number,
                      style: GoogleFonts.juliusSansOne(
                          fontSize: 50, color: Color.fromARGB(255, 49, 49, 49)),
                    ),
                  ),
                  Text(e.letters,style: TextStyle(fontSize: 15),)
                ],
              ))
          .toList(),
    );
  }
}
