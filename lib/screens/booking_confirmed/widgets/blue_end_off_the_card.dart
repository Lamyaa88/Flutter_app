import 'package:flight/file_export.dart';

blueEndOfTheCard({BuildContext context}){
  return  Column(
    children: [
      SizedBox(
        height: isLandscape(context)
            ? 2 * height(context) * .4
            : height(context) * .55,
      ),
      Container(
        width: width(context) * .8,
        height: isLandscape(context)
            ? 2 * height(context) * .12
            : height(context) * .12,

        decoration: BoxDecoration(
            color: darkBlueColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
      ),
    ],
  );
}