import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:padma_smart_tech_blog/repo/api/models/data_model.dart';
import 'package:padma_smart_tech_blog/repo/api/models/dummy_blog_post.dart';
import 'package:padma_smart_tech_blog/ui/details_screen/post_details.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/responsive.dart';
import 'package:padma_smart_tech_blog/utils/string_constants.dart';

class BlogPostCard extends StatelessWidget {
  final Data blog;
  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Fimber.i("Enter Blogpost card");
    return Padding(
      padding: const EdgeInsets.only(bottom: SizeConstants.kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            //todo: image properties will be implemented further
            child: Image.asset("assets/images/0.jpg",fit: BoxFit.fill,),
          ),
          Container(
            padding: EdgeInsets.all(SizeConstants.kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: SizeConstants.kDefaultPadding,top: 10),
                  child: Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: "Raleway",
                      color: ColorConstants.kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(height: SizeConstants.kDefaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        //todo: go to the details page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => PostDetailsPage(
                              title: blog.title,
                              //todo: image properties will be implemented further
                              image: "assets/images/0.jpg",
                              description: blog.description,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: SizeConstants.kDefaultPadding / 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: ColorConstants.kPrimaryColor, width: 3),
                          ),
                        ),
                        child: Text(
                          "Read More",
                          style: TextStyle(color: ColorConstants.kDarkBlackColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_message-square.svg"),
                      onPressed: () {},
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
