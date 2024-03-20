import 'package:flutter/material.dart';

class ProfitCalculator extends StatefulWidget {
  const ProfitCalculator({Key? key}) : super(key: key);

  @override
  State<ProfitCalculator> createState() => _ProfitCalculatorState();
}

class _ProfitCalculatorState extends State<ProfitCalculator> {

  int _buyradioValue = 0;
  int _sellradioValue = 0;



  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Share quantity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 40, // Adjust the height here
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,

                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Purchase Price",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 40, // Adjust the height here
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,

                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sell Price",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 40, // Adjust the height here
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,

                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buy Commission",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 40, // Adjust the height here
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,

                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Radio(
                    value: 0,
                    groupValue: _buyradioValue,
                    onChanged: (value) {
                      setState(() {
                        _buyradioValue = value as int;
                      });
                    },
                  ),
                  Text('%'),
                  Radio(
                    value: 1,
                    groupValue: _buyradioValue,
                    onChanged: (value) {
                      setState(() {
                        _buyradioValue = value as int; // Update the selected radio button value
                      });
                    },
                  ),
                  Text('₹'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sell Commission",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 40, // Adjust the height here
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,

                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Radio(

                    value: 0,
                    groupValue: _sellradioValue,
                    onChanged: (value) {

                      setState(() {
                        _sellradioValue = value as int;
                      });
                    },
                  ),
                  Text('%'),
                  Radio(
                    value: 1,
                    groupValue: _sellradioValue,
                    onChanged: (value) {
                      setState(() {
                        _sellradioValue = value as int;
                      });
                    },
                  ),
                  Text('₹'),
                ],
              ),
            ),

           Divider(color: Colors.black,),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Buy Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "200rs",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                  ),



                ],
              ),


            ),


            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Sell Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "200rs",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                  ),



                ],
              ),


            ),


            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      color: Colors.teal,
                      child: Center(child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      color: Colors.green,
                      child: Center(child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),// Second new container color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
