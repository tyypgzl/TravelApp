import 'package:flutter/material.dart';

import '../../../constants.dart';

class SectionTile extends StatefulWidget {
  const SectionTile({
    Key? key,
    required this.sectionTitle,
  }) : super(key: key);

  final String sectionTitle;

  @override
  _SectionTileState createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding),
      child: Row(
        children: [
          Text(
            widget.sectionTitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
