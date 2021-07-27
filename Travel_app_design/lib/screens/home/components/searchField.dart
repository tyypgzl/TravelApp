import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313),
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        boxShadow: [kDefualtShadow],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: " Search Your Destination..",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Color(0xFF464A7E),
            wordSpacing: 1.5,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenHeight(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}
