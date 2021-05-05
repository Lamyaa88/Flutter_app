import 'dart:ui';

import 'package:flight/file_export.dart';
import 'package:flight/screens/select_flight/widgets/dashed_line_widget.dart';

singleFlightCard(
    {BuildContext context,
    String title,
    String subTitle,
    Widget icon,
    Function onTapIcon}) {
  return Container(width: width(context)*.9,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(onTap: (){Navigator.of(context).pushNamed(BookingConfirmedScreen.routeName);},
          child: Container(margin: EdgeInsets.only(bottom: isLandscape(context)
              ? 2 * height(context) * .05
              : height(context) * .05,
          ),
            child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
                  color: lightBlueColor),
              child: FittedBox(
                child: Row(
                  children: [
                    Container(

                        padding: EdgeInsets.only(
                            right: width(context) * .05, left: width(context) * .05),
                        width: width(context) * .9,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Column(
                          children: [
                            SizedBox(
                              height: isLandscape(context)
                                  ? 2 * height(context) * .03
                                  : height(context) * .03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SYD.MON",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .012
                                          : height(context) * .012),
                                ),
                                RotatedBox(
                                    quarterTurns: 5,
                                    child: Icon(
                                      Icons.flight,
                                      color: darkBlueColor,
                                    )),
                                Text(
                                  "DEL.TUE",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .012
                                          : height(context) * .012),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .0
                                    : height(context) * .0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "8:00 pm",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .02
                                          : height(context) * .02),
                                ),
                                dashedLineWidget(context: context),
                                Text(
                                  "10:00 pm ",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .02
                                          : height(context) * .02),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "28h 35m",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: blackColor,
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .015
                                          : height(context) * .015),
                                ),
                                SizedBox(
                                  width: width(context) * .05,
                                ),
                                Text(
                                  "1 STOP",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .015
                                          : height(context) * .015),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .02
                                    : height(context) * .02),
                            Divider(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

//                    logo widget
                                Container(
                                  child:Image.asset("assets/images/air1.png" ,height: isLandscape(context)
                                ? 2 * height(context) * .05
                                : height(context) * .05,width: width(context)*.2,)
                                ),

                                Text(
                                  " \$ 260",
                                  style: TextStyles.descriptionTextStyle.copyWith(
                                      fontSize: isLandscape(context)
                                          ? 2 * height(context) * .018
                                          : height(context) * .018),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .02
                                    : height(context) * .02),

                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
