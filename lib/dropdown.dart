import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  List<String> items = <String>[
    'Red',
    'Green',
    'Orange',
    'Black',
  ];
  String dropdownValue = 'Red';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          elevation: 5,

          onChanged: (value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          value: dropdownValue,
          items: items.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
        ),
        
      ),
      
    );
  }
}
