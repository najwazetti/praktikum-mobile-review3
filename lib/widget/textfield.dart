import 'package:flutter/material.dart';

class CostumTextfield extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  String? label, hint;

  CostumTextfield({super.key, required this.Controller, required this.label, required this.hint});

  @override
  State<CostumTextfield> createState() => _CostumTextfieldState();
}

class _CostumTextfieldState extends State<CostumTextfield> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {

    if(widget.label == "Password") {
      obscureText = true;
    }
    
    return SizedBox(
      width: 400,
      // height: 200,
      child: TextFormField(
        controller: widget.Controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        obscureText : obscureText,
      ),
    );
  }
}