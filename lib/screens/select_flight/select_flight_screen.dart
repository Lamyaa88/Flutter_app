import 'package:flight/file_export.dart';
import 'package:flight/screens/search_flights/widgets/top_icon_container.dart';
import 'package:flight/screens/select_flight/widgets/flights_list_view.dart';

class SelectFlightScreen extends StatelessWidget {
  static const String routeName = "SelectFlightScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor ,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .06
                            : height(context) * .06,
                      ),
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            topIconContainer(
                                context: context,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: darkBlueColor,
                                ),
                                onTapButton: () {}),
                            Text(
                              "SYD To DEL",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .03
                                      : height(context) * .025),
                            ),
                            topIconContainer(
                                context: context,
                                icon: Icon(
                                  Icons.sort,
                                  color: darkBlueColor,
                                ),
                                onTapButton: () {}),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .05
                            : height(context) * .05,
                      ),
                      flightsListView(context : context )


                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
