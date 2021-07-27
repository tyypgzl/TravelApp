import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/screens/home/components/place_card.dart';
import 'package:travel/screens/home/components/sectiontile.dart';
import '../../../size_config.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  _PopularPlacesState createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTile(
        sectionTitle: "Right Now at Spark",
      ),
      VerticalSpacing(
        of: 1,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        child: Row(
          children: [
            ...List.generate(
              travelSpots.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: PlaceCard(
                  isFulCard: false,
                  travelSpot: travelSpots[index],
                ),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(1),
            ),
          ],
        ),
      ),
    ]);
  }
}
