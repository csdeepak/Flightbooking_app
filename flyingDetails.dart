import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlyingDetails extends StatefulWidget {
  @override
  _FlyingDetailsState createState() => _FlyingDetailsState();
}

class _FlyingDetailsState extends State<FlyingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Odessa',
              style:GoogleFonts.poppins(
              textStyle: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          )),
              Text('Fr 6 Mar.', 
              style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
          ))
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Text('Los Angeles', 
              style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
          ))
            ],
          )
        ],
      ),
    );
  }
}