

import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  CarBody extends StatelessWidget {

   CarBody({super.key,required this.item ,required this.id, required this.handleClikdelete });
   String id;
  var item;
  final Function handleClikdelete;

  @override
  Widget build(BuildContext context)  {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
margin: EdgeInsets.only(top: 10),

      height: 70,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item),
          ElevatedButton(onPressed:
            () async {
          if (await confirm(context)) {
          return handleClikdelete(id);
          }
          return print('pressedCancel');
          },

              style:TextButton.styleFrom(
            backgroundColor: null
          ),
              child: Icon(Icons.delete))
        ],
      ),
    );

  }
}


