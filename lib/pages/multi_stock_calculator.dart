import 'package:flutter/material.dart';

class multi_stock_calculator extends StatefulWidget {
  const multi_stock_calculator({Key? key}) : super(key: key);

  @override
  State<multi_stock_calculator> createState() => _multi_stock_calculatorState();
}

class _multi_stock_calculatorState extends State<multi_stock_calculator> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Share qty",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Pruchase Price",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        _buildRowWithTextField("1", "₹"),
        _buildRowWithTextField("2", "₹"),
        _buildRowWithTextField("3", "₹"),
        _buildRowWithTextField("4", "₹"),
        _buildRowWithTextField("5", "₹"),


        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Shares ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "200rs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Cost ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "200rs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Average Price Per Share ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "200rs",
                style: TextStyle(fontWeight: FontWeight.bold),
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
    ));
  }

  Widget _buildRowWithTextField(String labelText, String suffixText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
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

          SizedBox(width: 8),
          Text(
            suffixText,
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
    );
  }
}
