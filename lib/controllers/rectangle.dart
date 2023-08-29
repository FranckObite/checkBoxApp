import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({
    super.key,
    required this.onChanged,
    required this.value,
    required this.onChanged1,
    required this.value1,

    //required this.controllerRectangleLong,
    //required this.controllerRectangleLarg,
  });
  final void Function(double)? onChanged;
  final void Function(double)? onChanged1;

  final double value;
  final double value1;

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  //final TextEditingController controllerRectangleLong;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Longueur :  "),
                      Slider(
                          min: 10,
                          max: 150,
                          value: widget.value,
                          onChanged: widget.onChanged!)
                      /*  Container(
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: controllerRectangleLong,
                            ),
                          )) */
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Largeur :  "),
                      Slider(
                          min: 10,
                          max: 400,
                          value: widget.value1,
                          onChanged: widget.onChanged1!)
                      /* Container(
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: controllerRectangleLarg,
                            ),
                          )) */
                    ],
                  ),
                ],
              ),
              Container(
                height: widget.value,
                width: widget.value1,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
