import 'package:flutter/material.dart';

class FlutterCatalog extends StatefulWidget {
  const FlutterCatalog({Key? key}) : super(key: key);

  @override
  State<FlutterCatalog> createState() => _FlutterCatalogState();
}

class _FlutterCatalogState extends State<FlutterCatalog> {
  final formKey = GlobalKey<FormState>();
  RegExp passvalid = RegExp(r'^[A-Z]a-z ]');
  bool visible = false;

  bool validatepassword(String pass) {
    if (passvalid.hasMatch(pass)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFormField'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  } else {
                    return null;
                  }
                },
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    // filled: true,
                    prefixIcon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Phone Number';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  // filled: true,
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Where can we reach you?',
                  labelText: 'Phone Number',
                  prefixText: '+234',
                ),
                keyboardType: TextInputType.phone,
                maxLength: 10,
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Email';
                  } else {
                    bool result = validatepassword(value);
                    if (result) {
                      return null;
                    }
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  // filled: true,
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Your email address',
                  labelText: 'E-mail',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLength: 300,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please tell us about yourself';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Tell us about yourself',
                  helperText: 'Keep it short, this is just an interview',
                  labelText: 'Life story',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please input your salary';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  suffixText: 'USD',
                  labelText: 'Salary',
                  prefixText: '\$',
                  suffixStyle: TextStyle(color: Colors.green),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  } else {
                    bool result = validatepassword(value);
                    if (result) {
                      return null;
                    } else {
                      return 'Password should contain Upper&Lower case';
                    }
                  }
                },
                obscureText: !visible,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  helperText: 'No more than 8 characters.',
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: (() {
                        setState(() {
                          visible = !visible;
                        });
                      }),
                      icon: visible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                ),
                maxLength: 8,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState!.validate();
                },
                child: const Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
