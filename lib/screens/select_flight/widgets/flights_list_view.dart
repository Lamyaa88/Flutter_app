import 'package:flight/file_export.dart';
import 'package:flight/screens/select_flight/widgets/single_flight_card.dart';
flightsListView({BuildContext context }){
  return    Container(height:  isLandscape(context) ? height(context)*.8: height(context)*.8,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(itemBuilder:(context , index ){
                return
                 singleFlightCard(context: context);
              } , itemCount:10  ),
            ),
          ),
        ],
      ));

}