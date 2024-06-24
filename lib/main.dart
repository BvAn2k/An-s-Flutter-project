import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(

    home: SafeArea(child: Scaffold(
    body:Myon() ,
    )),
    debugShowCheckedModeBanner: false,
  ));
}

class Myon extends StatelessWidget {
  const Myon({super.key});
  @override
  Widget build(BuildContext context) {
  return
Scaffold(

  body:Stack(
    children:[ Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Boxmethed('buttom1',Alignment.bottomRight),

        Boxmethed('buttom2', Alignment.bottomLeft)
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Boxmethed('buttom3 ', Alignment.topRight),
          Boxmethed('buttom4', Alignment.topLeft)
         ],
      )
      , ],),
    Center(child: Boxmethed('buttomCenter', Alignment.center,true))]
  )


  );





  //   RichText(text: TextSpan(
  //   style: DefaultTextStyle.of(context).style,
  //   children: const <TextSpan>[
  //     TextSpan(text: "hello "),
  //     TextSpan(text: "hello "  , style:TextStyle(fontSize: 400 , fontWeight:FontWeight.bold)),
  //     TextSpan(text: "hello ")
  //   ]
  // ));
  }

Container Boxmethed (String name , Alignment direction ,[ bool boxreadious = false]){
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius:BorderRadius.circular(boxreadious?100:0) ,
      ),
      alignment:direction,
      height: 100,
      width: 100,
      
      child: Text(name,style: const TextStyle(color: Colors.green),),
    );
}
}




