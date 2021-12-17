import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padma_smart_tech_blog/ext/num_x.dart';
import 'package:padma_smart_tech_blog/gen/fonts.gen.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/custom_box_shadow.dart';
import 'package:padma_smart_tech_blog/utils/fonts_helper/font_styles.dart';

class EditBlogUI extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  EditBlogUI({required this.title,required this.description,required this.image});
  @override
  _EditBlogUIState createState() => _EditBlogUIState();
}

class _EditBlogUIState extends State<EditBlogUI> {
  TextEditingController? title_controller;
  TextEditingController? description_controller;
  @override
  void initState() {
    title_controller = TextEditingController(text:widget.title );
    description_controller = TextEditingController(text: widget.description);
    super.initState();
  }
  var globalKey = GlobalKey<ScaffoldState>;
  var stdPxW = 20.w;
  var stdPxH = 16.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: stdPxW),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //**************1.Profile pic upload portion*****************
                SizedBox(
                  height: stdPxH,
                ),
                Container(
                  child: Text("Upload Your Blog Thumbnail",style: TextStyle(
                      fontFamily: FontFamily.sfProDisplay,fontWeight: FontWeight.bold,
                      fontSize: 15.w
                  ),),
                ),
                SizedBox(height: SizeConstants.kDefaultPadding-10,),
                InkWell(
                  child: (widget.image!="")?Container(
                    height: 200.h,
                    width: Get.width - 2*SizeConstants.kDefaultPadding,
                    child: Image.asset(widget.image,
                      fit: BoxFit.fill,),
                  ):Container(
                    color: Colors.grey.shade500,
                    height: 200.h,
                    width: Get.width - 2*SizeConstants.kDefaultPadding,
                    child: Center(
                      child: Icon(
                        Icons.camera_alt,
                        size: 150.w,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  onTap: () {
                    // ExtendedNavigator.of(context)
                    //     .pushNamed(Routes.imagePickerCropper);
                    //todo
                  },
                ),

                //*************************************
                SizedBox(
                  height: stdPxH,
                ),

                //*********Add title Section *******************
                Container(
                  child: Text("Add Title",style: TextStyle(
                      fontFamily: FontFamily.sfProDisplay,fontWeight: FontWeight.bold,
                      fontSize: 15.w
                  ),),
                ),
                SizedBox(height: SizeConstants.kDefaultPadding-10,),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [boxShadowForInputText],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    controller: title_controller,
                    maxLines: null,
                    onChanged: (value) {
                      //todo
                    },
                    style: titleTextStyle,
                    decoration: InputDecoration(
                        hintText: "Title",
                        hintStyle: hintTextStyle,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: stdPxH, vertical: stdPxW)),
                  ),
                ),
                //******************************************
                SizedBox(
                  height: stdPxH,
                ),
                Container(
                  child: Text("Add Description",style: TextStyle(
                      fontFamily: FontFamily.sfProDisplay,fontWeight: FontWeight.bold,
                      fontSize: 15.w
                  ),),
                ),
                SizedBox(height: SizeConstants.kDefaultPadding-10,),
                //*********Description Section *******************
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [boxShadowForInputText],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    controller: description_controller,
                    onChanged: (value) {
                      //todo
                    },
                    style: titleTextStyle,
                    decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: hintTextStyle,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: stdPxH, vertical: stdPxW)),
                  ),
                ),
                //******************************************
                SizedBox(
                  height: stdPxH*3,
                ),

                //*******************7.Button Section*********
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [boxShadowForInputText],
                  ),
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: RaisedButton(
                      color: ColorConstants.clearRed,
                      onPressed: () {
                        //todo
                      },
                      child: Text(
                        "Update Your Post",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: stdPxH*4,
                )
                //*****************************************
              ],
            ),
          ),
        ),
      ),
    );

  }

}

//**************** BottomSheet*******************888

