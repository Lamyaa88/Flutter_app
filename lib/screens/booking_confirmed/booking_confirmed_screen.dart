import 'package:flight/file_export.dart';
import 'package:flight/screens/booking_confirmed/widgets/blue_end_off_the_card.dart';
import 'package:flight/screens/booking_confirmed/widgets/booked_flight_card.dart';
import 'package:flight/screens/booking_confirmed/widgets/from_to_widget.dart';
import 'package:flight/screens/booking_confirmed/widgets/the_smallest_blue_end_of_the_card.dart';
import 'package:flight/screens/search_flights/widgets/top_icon_container.dart';
class BookingConfirmedScreen extends StatelessWidget {
  static const String routeName = "BookingConfirmedScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
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
                          "Booking Confirmed",
                          style: TextStyles.descriptionTextStyle.copyWith(
                              fontSize: isLandscape(context)
                                  ? 2 * height(context) * .025
                                  : height(context) * .02),
                        ),
                        topIconContainer(
                            context: context,
                            icon: Icon(
                              Icons.file_upload,
                              color: darkBlueColor,
                            ),
                            onTapButton: () {}),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: isLandscape(context)
                        ? 2 * height(context) * .03
                        : height(context) * .03,
                  ),
                  fromToWidget(context: context),
                  SizedBox(
                    height: isLandscape(context)
                        ? 2 * height(context) * .03
                        : height(context) * .03,
                  ),
                  Stack(
                    children: [
                      theSmallestBlueEndOfTHeCard(context :context),
                      blueEndOfTheCard(context: context),
                      TicketCard(
                        decoration: TicketDecoration(shadow: [
                          TicketShadow(color: Colors.grey, elevation: 60)
                        ]),
                        lineFromTop: height(context) * .48,
                        lineRadius: 18,
                        lineColor: darkBlueColor,
                        child: Column(
                          children: [
                            Container(
                                child: bookedFlightCard(context: context)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
