import 'package:facebook_ui/config/palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    Key key,
    @required this.currentUser,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'facebook',
            style: const TextStyle(
              color: Palette.facebookBlue,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          Container(
            width: 600.0,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
            ),
          )
        ],
      ),
    );
  }
}
