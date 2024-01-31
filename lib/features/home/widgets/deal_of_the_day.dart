import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 15,left: 10),
          child: Text("Deal of the day",style: TextStyle(fontSize: 20),),
        ),
        Image.network(
          'https://m.media-amazon.com/images/I/51Yn1v7blLL._SL1080_.jpg',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            '₹ 49,999',
            style: TextStyle(
              fontSize: 18
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 15,top: 5,right: 40),
          child: Text('Microsoft surface',maxLines: 2,overflow: TextOverflow.ellipsis,),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://5.imimg.com/data5/SELLER/Default/2020/12/UK/GS/MC/25753287/vivo-y50-blue.jpeg',fit: BoxFit.fitWidth,width: 100,height: 100,),
              Image.network('https://5.imimg.com/data5/SELLER/Default/2020/12/UK/GS/MC/25753287/vivo-y50-blue.jpeg',fit: BoxFit.fitWidth,width: 100,height: 100,),
              Image.network('https://5.imimg.com/data5/SELLER/Default/2020/12/UK/GS/MC/25753287/vivo-y50-blue.jpeg',fit: BoxFit.fitWidth,width: 100,height: 100,),
              Image.network('https://5.imimg.com/data5/SELLER/Default/2020/12/UK/GS/MC/25753287/vivo-y50-blue.jpeg',fit: BoxFit.fitWidth,width: 100,height: 100,),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 15,bottom: 15,left: 15),
          alignment: Alignment.topLeft,
          child: Text('See all deals',style: TextStyle(color: Colors.cyan[800],),),
        )
      ],
    );
  }
}