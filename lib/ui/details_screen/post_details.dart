import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padma_smart_tech_blog/ext/widget_x.dart';
import 'package:padma_smart_tech_blog/gen/fonts.gen.dart';
import 'package:padma_smart_tech_blog/ui/details_screen/comment_ui.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
class PostDetailsPage extends StatefulWidget {
  final String title;
  final String image;
  final String description;
  final List<String> comments;
  PostDetailsPage(
      {required this.title,
        required this.image,
        required this.description,
        required this.comments
      });

  @override
  _PostDetailsPageState createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {

  TextEditingController? _controller;
 @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    size: 20,
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    //todo: do delete operation
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    //todo: do edit operation
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              Text(
                widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ).toBoxAdapter(),
              const SizedBox(
                height: 16,
              ).toBoxAdapter(),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(widget.image),
                ),
              ).toBoxAdapter(),
              const SizedBox(
                height: 20,
              ).toBoxAdapter(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: widget.description[0],
                        style: GoogleFonts.notoSerif(
                            color: Colors.black, fontSize: 32)),
                    TextSpan(
                      text:widget.description.substring(1),
                      style: GoogleFonts.notoSerif(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.7,
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ).toBoxAdapter(),
              SizedBox(height: SizeConstants.kDefaultPadding).toBoxAdapter(),
              commentBox().toBoxAdapter(),
              commentList(widget.comments),
              SizedBox(height: SizeConstants.kDefaultPadding*2,).toBoxAdapter()
            ],
          ),
        ),
      ),
    );
  }

  Widget commentBox() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                maxLines: 2,
                textInputAction: TextInputAction.send,
                controller: _controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    hintStyle: TextStyle(color: Colors.white60),
                    hintText: "Write your comment.."),
                onEditingComplete: (){
                  //todo: onediting action
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              color: Theme.of(context).primaryColor,
              onPressed: (){
                //todo: onpressedaction
              },
            )
          ],
        ),
      );
  }
}

SliverList commentList(List<String> comments) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
          return CommentUI(comments[index], index);
    },
      childCount: comments.length
    ),
  );
}
