import 'package:flutter/material.dart';

import '../controllers/carre.dart';
import '../controllers/cercle.dart';
import '../controllers/rectangle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController controllerCercle;
  late TextEditingController controllerCarre;
  late TextEditingController controllerRectangleLong;
  late TextEditingController controllerRectangleLarg;
  String radioItem = '';

  List<String> radioItemList = [
    ' Cercle ',
    'Carré ',
    'Rectangle',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerCercle = TextEditingController();
    controllerCarre = TextEditingController();
    controllerRectangleLarg = TextEditingController();
    controllerRectangleLong = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerCercle.dispose();
    controllerCarre.dispose();
    controllerRectangleLarg.dispose();
    controllerRectangleLong.dispose();
  }

  double value = 10;
  double valeu1 = 10;
  double value2 = 10;
  double value3 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("CheckBOX App"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
               const SizedBox(
              height: 20,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: radioItemList
                    .map((data) => Row(
                          children: [
                            Radio(
                              value: data,
                              groupValue: radioItem,
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val!;
                                });
                              },
                            ),
                            Text(data),
                          ],
                        ))
                    .toList(),
              ),
              if (radioItem == radioItemList[0])
                Cercle(
                  onChanged: (double newValue) {
                    setState(() {
                      value = newValue;
                    });
                  },
                  value: value,
                ),
              if (radioItem == radioItemList[1])
                Carre(
                  value: valeu1,
                  onChanged: (double newValue) {
                    setState(() {
                      valeu1 = newValue;
                    });
                  },
                ),
              if (radioItem == radioItemList[2])
                Rectangle(
                  value: value2,
                  value1: value3,
                  onChanged: (double newValue) {
                    setState(() {
                      value2 = newValue;
                    });
                  },
                  onChanged1: (double newValue) {
                    setState(() {
                      value3 = newValue;
                    });
                  },
                ),
              if (radioItem == "")
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: const Center(
                      child: Text(
                    "Choisissez une figure",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
