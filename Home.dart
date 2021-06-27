
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
      var result = "";
Widget btn( var textt){
  return ElevatedButton(onPressed: () {
 
    setState((){
     result= result +textt;
    });
  }, child: Text(textt));
}

clearr (){
  setState((){
 result = "";
  });
 
}
output(){
  Parser p = Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
setState((){
  result = eval.toString();
});
}

  
 
  //  List<dynamic> list = ["https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg","https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-bugatti-chiron-is-shown-to-the-goodwood-festival-of-news-photo-1600106522.jpg?crop=0.641xw:1.00xh;0.127xw,0&resize=640:*","https://i.insider.com/550cbf03ecad04de2c7c008a?width=1200&format=jpeg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          
        btn("1"),
         btn("2"),
           btn("3"),
              btn("4"),
           
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        btn("5"),
         btn("6"),
           btn("7"),
              btn("8"),
              
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        btn("9"),
         btn("."),
           btn("*"),
              btn("+"),
            
          ],
        ),
        
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        btn("-"),
         btn("/"),
          
             ElevatedButton(onPressed: clearr, child:Text("clear")),
              ElevatedButton(onPressed: output, child:Text("=")),
 
          ],
        ),
         
        
        ],
      ),
    
    
       );

      }
}

