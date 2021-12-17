import 'package:flutter/material.dart';
import 'package:padma_smart_tech_blog/repo/api/models/dummy_blog_post.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';
import 'package:padma_smart_tech_blog/utils/responsive.dart';

import 'components/blogpost_card.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
                  (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
      ],
    );
  }
}
