import 'package:flutter/material.dart';
import 'package:task/NavBar.dart';
import 'package:task/nameGenerator.dart';

class SecondRoute extends StatefulWidget {
  final List allNumbers;
  const SecondRoute({Key? key, required this.allNumbers}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: FloatingActionButton(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey[800],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(children: [
                    const Text('Contacts',
                        style: TextStyle(
                            color: Color.fromARGB(255, 64, 64, 64),
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.grid_view, color: Colors.grey),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.splitscreen_outlined,
                            color: Colors.grey[800])
                      ],
                    )
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.allNumbers.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return ListTile(
                        leading: Container(
                            width: 55,
                            height: 55,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff4adf78)),
                            child: const Icon(Icons.person,
                                color: Color.fromARGB(255, 40, 40, 40))),
                        title: Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            generateRandomName(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(widget.allNumbers[index]),
                        trailing: const Icon(Icons.call,
                            size: 30, color: Color(0xff4adf78)),
                      );
                    }),
              ]),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const NavBar());
  }
}
