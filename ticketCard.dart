import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class TicketCard extends StatefulWidget {
  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final String totalTime;
  final bool ticketType;
  TicketCard(
      {required this.price,
      required this.arrivalTime,
      required this.departureTime,
      required this.destinationCode,
      required this.originCode,
      required this.totalTime,
      required this.ticketType});
  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('\$${widget.price}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(153, 4, 175, 0.816),
                                decoration: TextDecoration.none,
                              ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 15
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Fr 6 Mar.', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
                        )),
                          Text('Fr 6 Mar.', 
                          style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
                        )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.originCode}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            )),
                          Text('${widget.destinationCode}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 8
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.departureTime}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            )),
                          Text('${widget.arrivalTime}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.flight_takeoff, color: Colors.grey),
                            Text(" - - - - - - - - - ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w100,
                              color: Colors.grey,
                              decoration: TextDecoration.none
                             ),),
                            Icon(Icons.flight_land,color: Colors.grey),
                          ],
                        ),
                      ),
                      SizedBox(height:5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${widget.totalTime}',
                              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none
                              ),
                              )),
                          
                        ],
                      ),
                      ElevatedButton(
                        onPressed: null, 
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(183, 37, 206, 0.655), 
                        ),
                        child: Text("Book Now"))
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                  height: 70.0,
                  width: 100.0,
                  child: widget.ticketType
                      ? Center(
                          child: Text(
                            'Top',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        )
                      : Center(
                          child: Text(
                            'Med',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

