import 'package:flight/file_export.dart';
void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
        home: SearchFlightsScreen(),
        theme: ThemeData(
            primaryColor: lightBlueColor,
            accentColor: lightBlueColor,
            fontFamily: "Segoe UI"),
        routes: {
          SearchFlightsScreen.routeName: (context) => SearchFlightsScreen(),
          SelectFlightScreen.routeName: (context) => SelectFlightScreen(),
          BookingConfirmedScreen.routeName: (context) => BookingConfirmedScreen(),
        },)
  );}










