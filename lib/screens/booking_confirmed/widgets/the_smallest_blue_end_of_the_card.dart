import 'package:flight/file_export.dart';

theSmallestBlueEndOfTHeCard({BuildContext context}){
  return  Column(
    children: [
      SizedBox(
        height: isLandscape(context)
            ? 2 * height(context) * .41
            : height(context) * .565,
      ),
      Container(width: width(context)*.8,
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width(context) * .7,
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
        ),
      ),
    ],
  ) ;
}