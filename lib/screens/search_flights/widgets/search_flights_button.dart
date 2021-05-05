import 'package:flight/file_export.dart';

searchFlightButton({BuildContext  context ,Function onTapButton  }){
  return  Neumorphic(
    style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(30)),
        depth: 10,
        lightSource: LightSource.topLeft,
        shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
        color: darkBlueColor),
    child: GestureDetector(
        onTap: onTapButton ,
        child: Container(
          height: isLandscape(context) ? 2 * height(context)*.08 : height(context)*.08,
          width: width(context) * .9,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Center(
            child: Text(
              "SEARCH FLIGHTS",
              style: TextStyles.descriptionTextStyle
                  .copyWith(color: lightBlueColor),
            ),
          ),
        )),
  ) ;
}