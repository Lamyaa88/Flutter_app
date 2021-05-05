import 'package:flight/file_export.dart';

flightDescriptionCard({BuildContext context , String  title ,  String subTitle , Widget icon , Function onTapIcon }){
  return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8)),
          depth: 10,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
          color: lightBlueColor),

        child: FittedBox(
          child: Container(
              width: width(context) * .44,
              decoration:
              BoxDecoration(shape: BoxShape.circle),
              child: Column(
                children: [
                  SizedBox(
                    height: isLandscape(context) ? 2 * height(context)*.03 : height(context)*.03,
                  ),
                  Row(
                    children: [
                      GestureDetector(onTap: onTapIcon,
                        child: Container(
                            width: width(context) * .1,
                            padding: EdgeInsets.only(
                                left: width(context) * .03),
                            child: icon),
                      ),
                      SizedBox(
                        width: width(context) * .03,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width(context) * .3,
                            child: Row(
                              children: [
                                Text(
                                 title.toUpperCase(),
                                  style: TextStyles
                                      .descriptionTextStyle
                                      .copyWith(
                                      color:
                                      darkBlueColor,
                                      fontSize: isLandscape(context) ? 2 * height(context)*.02 : height(context)*.02)
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: width(context) * .3,
                              child: Text(
                                subTitle ,
                                style: TextStyles
                                    .descriptionTextStyle
                                    .copyWith(
                                    color: blackColor,
                                    fontSize: isLandscape(context) ? 2 * height(context)*.018 : height(context)*.018)

                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: isLandscape(context) ? 2 * height(context)*.03 : height(context)*.03
                  ),
                ],
              )),
        ),
      ) ;
}