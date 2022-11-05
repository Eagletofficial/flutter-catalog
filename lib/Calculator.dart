import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
// int firstNumber = 0;
//   int secondNumber = 0;
//   String result = "";
//   String text = "";
//   String operation = "";

//   void buttonPressed(String btnText) {
//     if (btnText == "AC") {
//       result = "";
//       text = "";
//       firstNumber = 0;
//       secondNumber = 0;
//     } else if (btnText == "+" ||
//         btnText == "-" ||
//         btnText == "X" ||
//         btnText == "/") {
//       firstNumber = int.parse(text);
//       result = "";
//       operation = btnText;
//     } else if (btnText == "=") {
//       secondNumber = int.parse(text);
//       if (operation == "+") {
//         result = (firstNumber + secondNumber).toString();
//       }
//       if (operation == "-") {
//         result = (firstNumber - secondNumber).toString();
//         if (operation == "X") {
//           result = (firstNumber * secondNumber).toString();
//         }
//         if (operation == "/") {
//           result = (firstNumber / secondNumber).toString();
//         }
//       } else {
//         result = int.parse(text + btnText).toString();
//       }
//       setState(() {
//         text = result;
//       });
//     }
//   }

  String output = '0';

  String _output = '0';
  double num1 = 0;
  double num2 = 0;
  String operand = '';

  buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      _output = '0';
      num1 = 0;
      num2 = 0;
      operand = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '/' ||
        buttonText == 'X') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = '0';
    } else if (buttonText == '.') {
      if (_output.contains('.')) {
        print('Already contains a decimals');
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operand == '+') {
        _output = (num1 + num2).toString();
      }
      if (operand == '-') {
        _output = (num1 - num2).toString();
      }
      if (operand == 'X') {
        _output = (num1 * num2).toString();
      }
      if (operand == '/') {
        _output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = '';
    } else {
      _output = _output + buttonText;
    }
    // print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget calbutton(String btnText, Color btncolor, Color txtcolor) {
    return ElevatedButton(
      onPressed: () => {buttonPressed(btnText)},
      // ignore: sort_child_properties_last
      child: Text(
        btnText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(80, 70),
        shape: const CircleBorder(),
        backgroundColor: btncolor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('CALCULATOR'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    _output,
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton('AC', Colors.grey, Colors.white),
                calbutton('+/-', Colors.grey, Colors.white),
                calbutton('%', Colors.grey, Colors.white),
                calbutton('/', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton('7', Colors.grey.shade800, Colors.white),
                calbutton('8', Colors.grey.shade800, Colors.white),
                calbutton('9', Colors.grey.shade800, Colors.white),
                calbutton('x', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton('4', Colors.grey.shade800, Colors.white),
                calbutton('5', Colors.grey.shade800, Colors.white),
                calbutton('6', Colors.grey.shade800, Colors.white),
                calbutton('-', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton('1', Colors.grey.shade800, Colors.white),
                calbutton('2', Colors.grey.shade800, Colors.white),
                calbutton('3', Colors.grey.shade800, Colors.white),
                calbutton('+', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(
                //   height: 70,
                //   width: 170,
                //   child: ElevatedButton(
                //     onPressed: (() {}),
                //     // ignore: sort_child_properties_last
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: const [
                //         Padding(
                //           padding: EdgeInsets.all(8.0),
                //           child: Text(
                //             '0',
                //             style: TextStyle(
                //               fontSize: 50,
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     style: ElevatedButton.styleFrom(
                //       shape: const StadiumBorder(),
                //       backgroundColor: Colors.grey[850],
                //     ),
                //   ),
                // ),
                calbutton('0', Colors.grey.shade800, Colors.white),
                calbutton('.', Colors.grey.shade800, Colors.white),
                calbutton('=', Colors.amber, Colors.white),
                calbutton('TJ', Colors.amber, Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
