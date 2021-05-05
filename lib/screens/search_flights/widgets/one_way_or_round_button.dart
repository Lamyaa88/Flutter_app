import 'package:flight/file_export.dart';

oneWayOrRoundButton({BuildContext context , Widget icon , String  buttonText , Function onTepButton , bool isBlueButton : false }){
  return   Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(30)),
          depth: 10,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
          color: isBlueButton == true ? darkBlueColor : lightBlueColor),
      child: GestureDetector(
        onTap: onTepButton,
        child: Container(
            height: isLandscape(context) ? 2 * height(context)*.07 : height(context)*.07,
            width: width(context) * .43,
            decoration:
            BoxDecoration(shape: BoxShape.circle),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                icon ,
                Text(
                  buttonText.toUpperCase(),
                  style: TextStyles.descriptionTextStyle
                      .copyWith( color: isBlueButton == true ? lightBlueColor: darkBlueColor ,fontWeight: FontWeight.normal),
                ),
              ],
            )),
      )) ;
}