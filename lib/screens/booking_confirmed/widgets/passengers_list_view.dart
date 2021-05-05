import 'package:flight/file_export.dart';
import 'package:flight/screens/booking_confirmed/widgets/passenger_widget.dart';
passengersListView({BuildContext context }){
  return    Container(height:  isLandscape(context) ? height(context)*.2: height(context)*.2,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(itemBuilder:(context , index ){
                return
                Column(children: [
                    passengerWidget(context: context),
                  SizedBox(
                      height: isLandscape(context)
                          ? 2 * height(context) * .01
                          : height(context) * .01),

                ],);

              } , itemCount:4),
            ),
          ),
        ],
      ));

}