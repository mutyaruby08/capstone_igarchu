import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';
class CustomCheckbox extends StatefulWidget {
  final TabController tabController;
  final String text;
  final String nValue;

  const CustomCheckbox({
    Key? key,
    required this.tabController,
    required this.text,
    required this.nValue,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
            value: checkBoxValue,
            checkColor: Colors.white,
            activeColor: kBackground2,
            onChanged: (newValue) {
              setState(() {
                checkBoxValue = newValue!;
              });
              // print('check');
            }),
        Text(widget.text,
            style:
                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 22))
      ],
    );
  }
}
