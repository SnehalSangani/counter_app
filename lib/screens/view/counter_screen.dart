import 'package:counter_app/screens/provider/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class counterscreen extends StatefulWidget {
  const counterscreen({Key? key}) : super(key: key);

  @override
  State<counterscreen> createState() => _counterscreenState();
}

class _counterscreenState extends State<counterscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Counter App"),
      ),
      body: Center(
        child: Consumer<counterprovider>
          (builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 25),),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              Provider.of<counterprovider>(context,listen: false).increment();
            },child: Icon(Icons.add),
          ),
          SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: (){
              Provider.of<counterprovider>(context,listen: false).decrement();
            },child: Icon(Icons.exposure_minus_1_outlined),
          ),
          SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: (){
              Provider.of<counterprovider>(context,listen: false).times2();
            },child: Text("2x",style: TextStyle(fontSize: 17),),
          ),
          SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: (){
              Provider.of<counterprovider>(context,listen: false).times3();
            },child: Text("3x",style: TextStyle(fontSize: 17),),
          ),
          SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: (){
              Provider.of<counterprovider>(context,listen: false).times4();
            },child: Text("4x",style: TextStyle(fontSize: 17),),
          ),

        ],
      ),
    ),
    );
  }
}
