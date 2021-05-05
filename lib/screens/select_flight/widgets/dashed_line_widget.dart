import 'package:flight/file_export.dart';
import 'package:flutter/cupertino.dart';

dashedLineWidget({BuildContext context, bool withSmallCircle: true}) {
  return Container(
    width: withSmallCircle == true ? width(context) * .4 : width(context) * .8,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        withSmallCircle == true ? blueCircle(context) : SizedBox(),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1 : 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1 : 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1 : 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),
        singleDot(context: context, dotWidth: withSmallCircle == true ? 1: 2),


        withSmallCircle == true ? blueCircle(context) : SizedBox(),
      ],
    ),
  );
}

singleDot({BuildContext context, double dotWidth}) {
  return Container(
    height: isLandscape(context)
        ? 2 * height(context) * .003
        : height(context) * .003,
    width: isLandscape(context) ? width(context) * .01 : width(context) * .01*dotWidth,
    color: darkBlueColor.withOpacity(.5),
  );
}

blueCircle(BuildContext context) {
  return Container(
    height: isLandscape(context)
        ? 2 * height(context) * .01
        : height(context) * .01,
    width: isLandscape(context) ? width(context) * .02 : width(context) * .02,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: lightBlueColor,
        border: Border.all(color: darkBlueColor)),
  );
}
