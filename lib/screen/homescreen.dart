import 'package:flutter/material.dart';
import 'package:bmi/constant/constant.dart';
import 'package:bmi/widgets/rightbar.dart';
import 'package:bmi/widgets/leftbar.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double res = 0;
  String txtres = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: height,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height(m)',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color:
                            Color.fromARGB(255, 179, 200, 57).withOpacity(.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: weight,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight(kg)',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color:
                            Color.fromARGB(255, 179, 200, 57).withOpacity(.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                double h = double.parse(height.text);
                double w = double.parse(weight.text);
                setState(() {
                  res = w / (h * h);
                });

                if (res >= 25) {
                  txtres = 'Overweight';
                } else if (res < 25 && res >= 18.5) {
                  txtres = 'Normal Weight';
                } else
                  txtres = 'Under Weight';
              },
              child: Container(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                res.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Visibility(
              visible: txtres.isNotEmpty,
              child: Container(
                child: Text(
                  txtres,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            leftbar(barwidth: 60),
            SizedBox(height: 10),
            leftbar(barwidth: 40),
            SizedBox(height: 30),
            rightbar(barwidth: 40),
            SizedBox(
              height: 10,
            ),
            rightbar(barwidth: 70),
            SizedBox(
              height: 10,
            ),
            rightbar(barwidth: 40),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  res = 0;
                  txtres = "";
                  height.clear();
                  weight.clear();
                });
              },
              child: Container(
                child: Text(
                  'Clear',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 221, 199, 6),
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
