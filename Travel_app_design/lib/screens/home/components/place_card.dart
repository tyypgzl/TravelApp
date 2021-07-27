import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/models/User.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PlaceCard extends StatefulWidget {
  final TravelSpot travelSpot;
  final bool isFulCard;

  const PlaceCard({
    Key? key,
    required this.travelSpot,
    required this.isFulCard,
  }) : super(key: key);

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(widget.isFulCard ? 165 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: widget.isFulCard ? 1.2 : 1.7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.travelSpot.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(widget.isFulCard ? 165 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenHeight(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefualtShadow],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  widget.travelSpot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: widget.isFulCard ? 19 : 12,
                  ),
                ),


                if (widget.isFulCard)
                  Text(
                    widget.travelSpot.date.day.toString(),
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold, color: kTextColor),
                  ),

                 if(widget.isFulCard)
                  Text(DateFormat.MMMM().format(widget.travelSpot.date).toString()+" "+widget.travelSpot.date.year.toString()),
                 

                Travelers(
                  users: widget.travelSpot.users,
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key? key,
    required this.users,
  }) : super(key: key);
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;

    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(28),
      child: Stack(
        children: [
          ...List.generate(
            users.length,
            (index) {
              totalUser++;
              return Positioned(
                left: (23 * index).toDouble(),
                child: BuildTravelerFace(
                  index: index,
                ),
              );
            },
          ),
          Positioned(
            left: (22 * totalUser.toDouble()),
            child: SizedBox(
              width: getProportionateScreenWidth(28),
              height: getProportionateScreenHeight(28),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {},
                child: Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildTravelerFace extends StatelessWidget {
  const BuildTravelerFace({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        travelSpots[0].users[index].image,
        width: getProportionateScreenWidth(28),
        height: getProportionateScreenHeight(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
