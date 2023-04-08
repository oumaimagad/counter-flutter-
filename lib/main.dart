import 'package:flutter/material.dart';
void main() => runApp(CounterAPP());
class CounterAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title:'flutter counter application',
       home: CounterScreenState(),
       

    );
  }
}
class CounterScreenState extends StatefulWidget{
  @override
  CounterScreen createState() => CounterScreen(); 
}
class CounterScreen extends State<CounterScreenState>{
  int _count = 0;
  void _incrementCount(){
    setState(() {
      _count++;
    });
    
    }
     void _decrementCount(){
      if(_count<1){return;}
    setState(() {
      _count--;
    });
  
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 21, 27, 110),
      appBar:AppBar(title: Text(' Oumii counter ',),
      centerTitle: true,
      actions:<Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed:() {},
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(5),
          bottomRight:Radius.circular(5),

        ),

      ),
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 82, 189, 231),
      leading: Container(
        padding:EdgeInsets.all(0),
        child:Image.asset('assets/images/780e0e64d323aad2cdd5.png'), ),),
        bottomNavigationBar: BottomNavigationBar(
          items: [
         
            BottomNavigationBarItem(  
               backgroundColor: Color.fromARGB(255, 82, 189, 231),
              icon: Icon(Icons.home),
              label: 'Home',
             ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
             // backgroundColor: Color.fromARGB(255, 82, 189, 231),
           )
            /*BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              //backgroundColor: Color.fromARGB(255, 82, 189, 231),
           ),*/
          ],
        ),
      body: Center(
        child: Container(
          color:Colors.lightBlue.shade100,
          //padding: EdgeInsets.only(top:40, left: 40,bottom:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 82, 189, 231),
              child: Icon(Icons.remove),
              onPressed: _decrementCount,

            ),
            Center( child:
            Text(" Let's go:   ${_count}",
            style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)
            ),
            ),
             FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 82, 189, 231),
            child: Icon(Icons.add),
            onPressed: _incrementCount ,
            ),
          ],
        ),
        )
      )
    );
  }
}
