import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flight_booking/secondpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _fromDestination=TextEditingController();
  final _toDestination=TextEditingController();
  String userFrom=' ';
  String userTo=' ';
  String? selectedItem='Economy';
  DateTime date=DateTime.now();

  void next_page(){
    setState(() {
      userFrom=_fromDestination.text;
      userTo=_toDestination.text;
    });
    Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => secondpage(),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 160, 229),
      appBar: AppBar(
        title: Text(
          "Flight Booking",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Book your next trip with us!",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                ),
                ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              color:Color.fromRGBO(182, 90, 196, 0.3),
              ),
              width: 400,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextField(
                  controller: _fromDestination,
                  decoration: InputDecoration(
                    hintText: "From:",
                    border: const OutlineInputBorder(),
                    prefixIcon: Icon(Icons.flight_takeoff),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _fromDestination.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )
                  ),
                ),
            
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: _toDestination,
                decoration: InputDecoration(
                  hintText: "To:",
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(Icons.flight_land),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _toDestination.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Container(
                width:300,
                 child: Row(
                  children: [
                    Text(
                      "Departure",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        ),)
                    ),
                    SizedBox(
                      width:20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${date.day}/${date.month}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            )
                          ),
                        ),
                        Text(
                          '       ${date.year}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 88, 86, 86),
                            )
                          ),
                        ),
                        SizedBox(
                          height:15
                        ),
                        ElevatedButton(
                          child: Text('Select Date'),
                          onPressed: () async{
                            DateTime? newDate=await showDatePicker(
                              context: context, 
                              initialDate: date, 
                              firstDate: DateTime(2023), 
                              lastDate: DateTime(2025)
                              );
               
                              if (newDate==null) return;
                              setState(()=> date=newDate);
                          },
                        ),
                      ],
                    ),
                  ],
                             ),
               ),
               
                ]
            ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
              onPressed: next_page, 
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  "Search",
                ),
              ),
            ),]
            
                
                
      
          
          )
      ),
    );
  }


 

}