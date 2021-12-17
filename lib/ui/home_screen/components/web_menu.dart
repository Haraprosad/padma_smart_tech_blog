import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padma_smart_tech_blog/controller/menu_controller.dart';
import 'package:padma_smart_tech_blog/utils/color_constants.dart';
import 'package:padma_smart_tech_blog/utils/constant_size.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Row(
        children: List.generate(
          _controller.menuItems.length,
              (index) => WebMenuItem(
            text: _controller.menuItems[index],
            isActive: index == _controller.selectedIndex,
            press: () => _controller.setMenuIndex(index),
          ),
        ),
      ),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return ColorConstants.kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return ColorConstants.kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: SizeConstants.kDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: SizeConstants.kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: SizeConstants.kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
