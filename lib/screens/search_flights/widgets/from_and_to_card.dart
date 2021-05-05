import 'package:flight/file_export.dart';
fromAndToCard({BuildContext context  , String status , String place , Widget icon }){
  return  Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8)),
          depth: 10,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
          color: lightBlueColor),
      child: GestureDetector(
        onTap: () {},
        child: FittedBox(
          child: Container(
              width: width(context) * .9,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Column(
                children: [
                  SizedBox(
                    height: isLandscape(context) ? 2 * height(context)*.015 : height(context)*.015,
                  ),
                  Row(
                    children: [
                      Container(
                          width: width(context) * .1,
                          padding: EdgeInsets.only(
                              left: width(context) * .02),
                          child: icon),
                      SizedBox(
                        width: width(context) * .05,
                      ),
                      Column(
                        children: [
                          Container(
                            width: width(context) * .6,
                            child: Row(
                              children: [
                                Text(
                                  status.toUpperCase(),
                                  style: TextStyles
                                      .descriptionTextStyle
                                      .copyWith(
                                      color: darkBlueColor,
                                      fontSize: isLandscape(context) ? 2 * height(context)*.02 : height(context)*.02)

                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: width(context) * .6,
                              child: Text(
                               place ,
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
                    height: isLandscape(context) ? 2 * height(context)*.015 : height(context)*.015,
                  ),
                ],
              )),
        ),
      )) ;

}