
import 'package:flight/file_export.dart';
import 'package:flight/screens/booking_confirmed/widgets/passengers_list_view.dart';
import 'package:flight/screens/select_flight/widgets/dashed_line_widget.dart';
import 'package:flutter/material.dart';
bookedFlightCard(
    {BuildContext context,
      String title,
      String subTitle,
      Widget icon,
      Function onTapIcon}) {
  return GestureDetector(onTap: (){},
    child: Column(
      children: [
        Container(margin: EdgeInsets.only(bottom: isLandscape(context)
            ? 2 * height(context) * .05
            : height(context) * .05,
        ),
          child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(0)),
                depth: 10,
                lightSource: LightSource.topLeft,
                shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
                color: lightBlueColor),
            child: FittedBox(
              child: Container(

                  padding: EdgeInsets.only(
                      right: width(context) * .05, left: width(context) * .05),
                  width: width(context) * .8,
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
                         blueText(context: context , text:  "FLIGHT NO."),
                          blueText(context: context ,text: "CLASS"),
                          blueText(context: context ,text: "TERMINAL")
                        ],
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         blackText(context: context ,text:  "CX 138"),
                          blackText(context: context , text:   "          Business"),
                          blackText(context: context , text:  "66 B       ")
                        ],
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          blueText(context: context ,text:   "DATE"),
                         blueText(context: context ,text:  "         TIME"),
                          blueText(context: context ,text:  "SEAT          ")
                        ],
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          blackText(context: context ,text:  "12 Feb 2020"),
                         blackText(context: context ,text:  "  8:00 pm"),
                         blackText(context: context , text:    " 12 A , 12, B",)
                        ],
                      ),

                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         blueText(context: context ,text: "PASSENGERS")
                        ],
                      ),

                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),
                      passengersListView(context: context),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .02
                              : height(context) * .02),

//                  dashedLineWidget(context: context ,withSmallCircle: false),

                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .04
                              : height(context) * .04),


                      Container(
                        width: width(context)*.7,color: greyColor,height: height(context)*.1,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height(context) * .1,
                              width: width(context) * .7,
                              decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0), topLeft: Radius.circular(0)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/barCode.png' ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .04
                              : height(context) * .04),









                    ],
                  )),
            ),
          ),


        ),


      ],
    ),
  );
}
blackText({BuildContext context , String text }){
  return  Text(
    text ,
    style: TextStyles.descriptionTextStyle.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: isLandscape(context)
            ? 2 * height(context) * .018
            : height(context) * .018
    ),
  );
}
blueText({BuildContext context  , String text }){
  return Text(
    text,
    style: TextStyles.descriptionTextStyle.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: isLandscape(context)
            ? 2 * height(context) * .015
            : height(context) * .015),
  );
}
greyText({BuildContext context  , String text }){
  return Text(
    text,
    style: TextStyles.descriptionTextStyle.copyWith(
      color: Colors.grey,
        fontWeight: FontWeight.normal,
        fontSize: isLandscape(context)
            ? 2 * height(context) * .012
            : height(context) * .012),
  );
}




