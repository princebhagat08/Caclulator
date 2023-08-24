import 'package:calculator/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: const TextStyle(fontSize: 30, color: Colors.white,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        result.toString(),
                        style: const TextStyle(fontSize: 30, color:  Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children:  [
                      MyButton(title: 'AC', color: Colors.grey, onPress: (){
                        userInput = '';
                        result = '';
                        setState(() {

                        });;
                      },),
                      MyButton(title: 'DEL', color: Colors.grey,onPress: (){
                        userInput = userInput.substring(0,(userInput.length-1));
                        setState(() {

                        });
                      }),
                      MyButton(title: '%', color: Colors.grey,onPress: (){
                        userInput += '%';
                        setState(() {

                        });
                      }),
                      MyButton(title: '/', color: Colors.amber,onPress: (){
                        userInput += '/';
                        setState(() {

                        });
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      MyButton(title: '7', color: Colors.grey,onPress: (){
                        userInput += '7';
                        setState(() {

                        });
                      }),
                      MyButton(title: '8', color: Colors.grey,onPress: (){
                        userInput += '8';
                        setState(() {

                        });
                      }),
                      MyButton(title: '9', color: Colors.grey,onPress: (){
                        userInput += '9';
                        setState(() {

                        });
                      }),
                      MyButton(title: 'x', color: Colors.amber,onPress: (){
                        userInput += 'x';
                        setState(() {

                        });
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      MyButton(title: '4', color: Colors.grey,onPress: (){
                        userInput += '4';
                        setState(() {

                        });
                      }),
                      MyButton(title: '5', color: Colors.grey,onPress: (){
                        userInput += '5';
                        setState(() {

                        });
                      }),
                      MyButton(title: '6', color: Colors.grey,onPress: (){
                        userInput += '6';
                        setState(() {

                        });
                      }),
                      MyButton(title: '-', color: Colors.amber,onPress: (){
                        userInput += '-';
                        setState(() {

                        });
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      MyButton(title: '1', color: Colors.grey,onPress: (){
                        userInput += '1';
                        setState(() {

                        });
                      }),
                      MyButton(title: '2', color: Colors.grey,onPress: (){
                        userInput += '2';
                        setState(() {

                        });
                      }),
                      MyButton(title: '3', color: Colors.grey,onPress: (){
                        userInput += '3';
                        setState(() {

                        });
                      }),
                      MyButton(title: '+', color: Colors.amber,onPress: (){
                        userInput += '+';
                        setState(() {

                        });
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      MyButton(title: '0', color: Colors.grey,onPress: (){
                        userInput += '0';
                        setState(() {

                        });
                      }),
                      MyButton(title: '00', color: Colors.grey, onPress: (){
                        userInput += '00';
                        setState(() {

                        });
                      }),
                      MyButton(title: '.', color: Colors.grey,onPress: (){
                        userInput += '.';
                        setState(() {

                        });
                      }),

                      MyButton(title: '=', color: Colors.amber,onPress: (){
                        equal();
                        setState(() {

                        });
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equal(){
    String finalInput = userInput.replaceAll('x', '*');
    Parser p =  Parser();
    Expression expression = p.parse(finalInput);
    ContextModel contextModel = ContextModel();
    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);
    result = evaluate.toString();


  }

}

