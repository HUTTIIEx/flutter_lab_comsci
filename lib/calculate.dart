import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  late double n1;
  late double n2;
  late double sum;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Calculator'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your number of A',
                ),
                controller: input1,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  setState(() {
                    input1.text;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your number of B',
                ),
                controller: input2,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  setState(() {
                    input2.text;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton( 
                    onPressed: () {
                      sum = n1 + n2;
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text('Result'),
                          content: Column(children: [
                            Text("$input1 + $input2 = $sum"),
                          ],),
                        )
                      );
                    },
                    child: const Text('Add'),
                  ),
                  const SizedBox(
                    width: 20,),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Subtract'),
                  ),
                  const SizedBox(
                    width: 20,),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Multiply'),
                  ),
                  const SizedBox(
                    width: 20,),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Divide'),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}


