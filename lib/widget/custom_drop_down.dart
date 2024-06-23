import 'package:flutter/material.dart';
import 'package:flutter_filter_dialog/flutter_filter_dialog.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  List<int> value = [2];
  List<S2Choice<int>> frameworks = [
    S2Choice<int>(value: 1, title: 'Ionic'),
    S2Choice<int>(value: 2, title: 'Flutter'),
    S2Choice<int>(value: 3, title: 'React Native'),
  ];
  @override
  Widget build(BuildContext context) {
    return SmartSelect<int>.multiple(
      title: 'Frameworks',
      selectedValue: value,
      choiceItems: frameworks,
      onChange: (state) => setState(() => value = state!.value!),
    );
  }
}
