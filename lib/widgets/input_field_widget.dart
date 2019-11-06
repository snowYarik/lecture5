import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputFieldWidget extends StatefulWidget {
  const InputFieldWidget({
    @required this.context,
    @required this.labelText,
    @required this.controller,
  });

  final BuildContext context;
  final String labelText;
  final TextEditingController controller;
  @override
  State<StatefulWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(widget.context).accentColor,
            ),
          ),
          labelText: widget.labelText),
    );
  }
}
