import 'package:flutter/material.dart';
import 'package:flight_booking/components/flightTickets.dart';
import 'package:flight_booking/components/flyingDetails.dart';
//import 'package:flight_booking/components/sorting_details.dart';
/*import 'package:travellingApp/components/tabs.dart';
import 'package:travellingApp/utilities/themeColors.dart';*/



class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 490.0,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 195, 160, 229),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(45.0))),
        ),
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              FlyingDetails(),
              SizedBox(height: 10.0),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
