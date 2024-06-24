import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widget/cardBody.dart';
import 'Widget/dataitems.dart';



void main() {


  runApp( MaterialApp(

    home: SafeArea(child: Scaffold(
      body:Myon() ,
    )),
    debugShowCheckedModeBanner: false,
  ));
}
class Myon extends StatefulWidget{

     Myon({Key? key}): super(key: key);

  @override
  State<Myon> createState() => _MyonState();
}

class _MyonState extends State<Myon> {
    final  List<Dataitems>items = [
    ];

      String textvalue = '';

void handleOnclik (BuildContext context){
  if(textvalue.isEmpty){
    return;
  }else{
    setState(() {
      items.add(Dataitems(id: DateTime.now().toString(), name: textvalue));
Navigator.pop(context);
textvalue='';
    });
  }


}
void handleClikdelete(String id ){
  items.removeWhere((element)=>element.id == id);
  setState(() {

  });
print(id);
}

  @override
  Widget build(BuildContext context) {
return Scaffold(
 appBar: AppBar(title: Center(
   child: Text('ToDoList',style: TextStyle(fontSize: 30,
     fontWeight:FontWeight.w500,color: Colors.white ),),
 ),
   backgroundColor: Colors.green,),
  body:SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item){
          return CarBody(item: item.name,id: item.id,handleClikdelete:handleClikdelete ,);
        }).toList(),
      ),
    ),
  ),
  floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue, onPressed: (){
    showModalBottomSheet(context: context,isScrollControlled: true,
        builder:(BuildContext context){
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

        child: Column(
          children: [
            TextField(
              onChanged: (e){
             if(e.isEmpty){
               return;
             }else{
               textvalue = e ;
             }

              },
        decoration:InputDecoration(
          labelText: 'your task',
        labelStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
           ),
            ),
            )
            ,SizedBox(height: 30,),
            SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(onPressed:() =>handleOnclik(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,

         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          ),
            child: Text('Clik Add',style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
        ),
            )
          ],
        ),
        ),
      );
    } );
  },
    child: Icon(Icons.add, color: Colors.white,),

  ) ,
);


  }
}

  

