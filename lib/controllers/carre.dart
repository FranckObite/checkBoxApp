import 'package:flutter/material.dart';

class Carre extends StatefulWidget {
  const Carre({
    super.key,
    required this.onChanged,
    required this.value,
    //required this.controllerCarre,
  });
  final void Function(double)? onChanged;
  final double value;

  @override
  State<Carre> createState() => _CarreState();
}

class _CarreState extends State<Carre> {
  //final TextEditingController controllerCarre;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Longueur du coté :  "),
                  Slider(
                      min: 10,
                      max: 300,
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
                          controller: controllerCarre,
                        ),
                      )
                      ) */
                ],
              ),
              Container(
                height: widget.value,
                width: widget.value,
                color: Colors.green,
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
