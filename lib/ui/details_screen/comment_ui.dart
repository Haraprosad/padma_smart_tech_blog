import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/string_constants.dart';
Widget CommentUI(String comment, int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
      (comment==StringConstants.noComment)?Container():
        Padding(
          padding: const EdgeInsets.only(left:SizeConstants.kDefaultPadding,
          top: 10),
          child: Text("Comment: ${index+1}"),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.grey.shade300,
          ),

          margin: EdgeInsets.only(left:SizeConstants.kDefaultPadding-10,
          right: SizeConstants.kDefaultPadding-10,top: 10),
          padding: EdgeInsets.all(SizeConstants.kDefaultPadding),
          child: Text(comment,style: TextStyle(
            color: Colors.black54,
          ),),
        ),
      ],
    );
}
