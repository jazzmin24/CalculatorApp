import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstnum;
  late int secondnum;
  String textToDisplay = "";
  late String result;
  late String OperatorToPerform;
  void btnclicked(String btnval) {
    if (btnval == "AC") {
      textToDisplay = "";
      firstnum = 0;
      secondnum = 0;
      result = "";
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "/" ||
        btnval == "*" ||
        btnval == "%" ) {
      firstnum =
          int.parse(textToDisplay); //user ne phla se koi value input krdi h
      result = "";
      OperatorToPerform = btnval;
    } else if (btnval == "=") {
      secondnum = int.parse(textToDisplay); //second no. aana k baad ye hoga
      if (OperatorToPerform == "+") {
        result = (firstnum + secondnum).toString();
      }
      if (OperatorToPerform == "-") {
        result = (firstnum - secondnum).toString();
      }
      if (OperatorToPerform == "/") {
        result = (firstnum / secondnum).toString();
      }
      if (OperatorToPerform == "*") {
        result = (firstnum * secondnum).toString();
      }
      if (OperatorToPerform == "%") {
        result = (firstnum % secondnum).toString();
      }
      
    }
    else {
      result = int.parse(textToDisplay + btnval).toString();
    }

    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Calculator',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,

            alignment: Alignment.bottomRight,
            child: Text(
              '$textToDisplay',
              style: TextStyle(fontSize: 65, fontWeight: FontWeight.w500),
            ),
            //color: Colors.amber,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  btnclicked('AC');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'AC',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked("Icons.backspace_outlined");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.backspace_outlined,
                      weight: 100,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '+/-',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('/');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  btnclicked('7');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('8');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('9');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('*');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '*',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  btnclicked('4');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('5');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('6');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('-');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  btnclicked('1');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('2');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('3');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('+');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  btnclicked('%');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '%',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('0');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('.');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 217),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  btnclicked('=');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



//use custom widget rather than making each container again and again
//expanded widget arranging  