import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _fieldOneTEController = TextEditingController();
  final TextEditingController _fieldTwoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum Calculator'),
        centerTitle: true,
      ),
      body: Wrap(
        children:[ Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _fieldOneTEController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Field 1',
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter valid value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _fieldTwoTEController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Field 2',
                  ),
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter valid value';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = addition(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.add),
                      label: Text('Add'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = subtraction(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.remove),
                      label: Text('Sub'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = multiply(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.car_repair),
                      label: Text('Multiply'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = divide(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.calculate_outlined),
                      label: Text('Divide'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          print(firstNumber);
                          print(secondNumber);
                          result = modulus(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.cable_outlined),
                      label: Text('Modulus'),
                    ),
                  ],
                ),
                Text(
                  'Result is: $result',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }

  double parseToDouble(String text) {
    return double.tryParse(text) ?? 0;
  }

  double addition(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtraction(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  double modulus(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }
}
