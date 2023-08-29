import 'package:flutter/material.dart';

class Cercle extends StatefulWidget {
  const Cercle(
      {super.key,
      //required this.controllerCercle,
      required this.onChanged,
      required this.value});
  final void Function(double)? onChanged;
  final double value;

  //final TextEditingController controllerCercle;

  @override
  State<Cercle> createState() => _CercleState();
}

class _CercleState extends State<Cercle> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Rayon :  "),
                Slider(
                    min: 10,
                    max: 190,
                    value: widget.value,
                    onChanged: widget.onChanged!)

                /*  Container(
                    width: 200,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: controllerCercle,
                      ),
                    )) */
              ],
            ),
            CircleAvatar(
              radius: widget.value,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
