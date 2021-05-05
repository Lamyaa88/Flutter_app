import '../../../file_export.dart';

passengerWidget({BuildContext context }){
  return    Column(children: [
    Row(children: [
      Container(width: width(context)*.15,
          child: CircleAvatar(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
              child: ClipRRect(borderRadius: BorderRadius.circular(60),
                  child: Image.asset("assets/images/peson.jpg"))),)),
      Container(
        width: width(context)*.5,
        child: Row(
          children: [
            Column(children: [
              Container(width: width(context)*.5,
                  child: Row(children: [   blackText(context: context ,text: "John .H"),],)),
              Container(width: width(context)*.5,
                  child: Row(children: [   greyText(context: context ,text: "male , 28 yesrs ")],))


            ],),
          ],
        ),
      )

    ],)
  ],) ;
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