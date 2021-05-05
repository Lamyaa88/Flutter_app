import 'package:flight/file_export.dart';

centerImageWidget({BuildContext context}){
  return Container(
    width: width(context) * .7,
    height: isLandscape(context) ? 4 * height(context)*.2 : height(context)*.2,
    child: Image.asset(
      "assets/images/air2.png",
      fit: BoxFit.fitWidth,
    ),
  ) ;
}