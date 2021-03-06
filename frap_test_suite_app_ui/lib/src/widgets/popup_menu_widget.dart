import 'package:flutter/material.dart';
import 'package:frap_test_suite_app_ui/src/constants/pages_list.dart';

class PopupMenuWidget extends StatefulWidget {
  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  _onSelect(Page page) {
    Navigator.pushNamed(context, page.route);
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Page>(
      onSelected: _onSelect,
      itemBuilder: (BuildContext context) {
        return pages.map((Page page) {
          return PopupMenuItem<Page>(
            value: page,
            child: Text(page.title),
          );
        }).toList();
      },
    );
  }
}
