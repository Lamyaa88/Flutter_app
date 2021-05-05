import 'package:flight/file_export.dart';
import 'package:flight/screens/search_flights/widgets/center_image_widget.dart';
import 'package:flight/screens/search_flights/widgets/from_and_to_card.dart';
import 'package:flight/screens/search_flights/widgets/one_way_or_round_button.dart';
import 'package:flight/screens/search_flights/widgets/search_flights_button.dart';
import 'package:flight/screens/search_flights/widgets/single_flight_description_card.dart';
import 'package:flight/screens/search_flights/widgets/top_icon_container.dart';

class SearchFlightsScreen extends StatefulWidget {
  static const String routeName = "SearchFlightsScreen";

  @override
  _SearchFlightsScreenState createState() => _SearchFlightsScreenState();
}

class _SearchFlightsScreenState extends State<SearchFlightsScreen> {
  DateTime selectedDate = DateTime.now();
  String departDate = "15/2/2021";
  String returnDate = "15/2/2021";
  bool blueButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      body: Container(
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
                                  Icons.wrap_text_outlined,
                                  color: darkBlueColor,
                                ),
                                onTapButton: () {}),
                            Text(
                              "Search Flights",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .03
                                      : height(context) * .025),
                            ),
                            topIconContainer(
                                context: context,
                                icon: Icon(
                                  Icons.notifications_none,
                                  color: darkBlueColor,
                                ),
                                onTapButton: () {}),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .01
                            : height(context) * .01,
                      ),
                      centerImageWidget(context: context),

                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            oneWayOrRoundButton(
                                context: context,
                                buttonText: "One Way ",
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: blueButton == true
                                      ? lightBlueColor
                                      : darkBlueColor,
                                ),
                                isBlueButton: blueButton,
                                onTepButton: () {
                                  setState(() {
                                    blueButton = !blueButton;
                                    print(blueButton);
                                  });
                                }),
                            oneWayOrRoundButton(
                                context: context,
                                buttonText: "Round trip ",
                                icon: Icon(
                                  Icons.compare_arrows,
                                  color: blueButton == true
                                      ? darkBlueColor
                                      : lightBlueColor,
                                ),
                                isBlueButton: !blueButton,
                                onTepButton: () {
                                  setState(() {
                                    blueButton = !blueButton;
                                    print(blueButton);
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      fromAndToCard(
                          context: context,
                          status: "from",
                          place: "Sydney , Australia ",
                          icon: Icon(
                            Icons.flight_takeoff,
                            color: darkBlueColor,
                          )),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      fromAndToCard(
                          context: context,
                          status: "to",
                          place: "New Delhi , India",
                          icon: Icon(
                            Icons.flight_land,
                            color: darkBlueColor,
                          )),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),

//                     squares
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                  primaryColor: Colors.black,
                                  selectedRowColor: Colors.black,
                                  accentColor: darkBlueColor,
                                  colorScheme: ColorScheme.light(
                                    primary: darkBlueColor,
                                  )),
                              child: new Builder(
                                builder: (context) =>
                                    Container(
                                      child: flightDescriptionCard(
                                          context: context,
                                          title: "departure",
                                          subTitle: "${departDate}".split(
                                              " ")[0],
                                          icon: Icon(
                                            Icons.calendar_today,
                                            color: darkBlueColor,
                                          ),
                                          onTapIcon: () {
                                            _selectDepartDate(context);
                                          }),
                                    ),
                              ),
                            ),
                            flightDescriptionCard(
                                context: context,
                                title: "class",
                                subTitle: "business",
                                icon: Icon(
                                  Icons.event_seat,
                                  color: darkBlueColor,
                                ),
                                onTapIcon: () {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            flightDescriptionCard(
                                context: context,
                                title: "travellers",
                                subTitle: "2 Adults",
                                icon: Icon(
                                  Icons.person_outline,
                                  color: darkBlueColor,
                                ),
                                onTapIcon: () {}),
                            flightDescriptionCard(
                                context: context,
                                title: "book a car ",
                                subTitle: "In New Delhi",
                                icon: Icon(
                                  Icons.local_taxi,
                                  color: darkBlueColor,
                                ),
                                onTapIcon: () {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .04
                            : height(context) * .04,
                      ),
                      searchFlightButton(
                          context: context,
                          onTapButton: () {
                            Navigator.of(context)
                                .pushNamed(SelectFlightScreen.routeName);
                          }),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .04
                            : height(context) * .01,
                      ),

//                  buttons
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDepartDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000, 8),
        fieldHintText: "field",
        errorFormatText: "error",
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        departDate = picked.toLocal().toString();
      });
  }
}
