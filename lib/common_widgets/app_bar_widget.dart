import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final double? elevation;
  final Widget? titleWidget;
  final List<Widget>? actionWidgets;

  AppBarWidget({Key? key, required this.title, this.leading, this.elevation})
      : preferredSize = Size.fromHeight(40), //TODO
        titleWidget = null,
        actionWidgets = null,
        super(key: key);

  AppBarWidget.withTitleWidget(
      {Key? key,
      required this.titleWidget,
      this.leading,
      this.elevation,
      this.actionWidgets})
      : preferredSize = Size.fromHeight(40), //TODO
        title = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: leading,
      elevation: elevation,
      actions: actionWidgets ?? [],
      title: titleWidget ?? Text(title ?? ""),
    );
  }

  @override
  final Size preferredSize;
}
