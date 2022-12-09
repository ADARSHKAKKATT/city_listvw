import 'package:flutter/material.dart';

void main() {
  runApp(const City());
}

class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {

  List l1=["img/delhi.png","img/london.png","img/cancou.png","img/new york.png"];
  List l2=["Delhi","London","Vancouver","New York"];
  List l3=["India","Britain","Canada","USA"];
  List l4=["19 million","8 million","2.4 million","8.1 million"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Cities around world",
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: l1.length,itemBuilder: (BuildContext context, int i){
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 250,
                  child: Image.asset(l1[i],fit: BoxFit.cover,),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l2[i],style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(l3[i]),
                  Text(l4[i]),
                ],

              )
            ],
          );
        }
        ) ,
      ),
    );
  }
}
