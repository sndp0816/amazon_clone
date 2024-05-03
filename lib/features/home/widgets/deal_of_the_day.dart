import 'package:amazon_clone_app/common/widgets/loader.dart';
import 'package:amazon_clone_app/features/home/service/home_services.dart';
import 'package:amazon_clone_app/models/product.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  Product? product;
  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    
    super.initState();
    fetchDealOfDay();
  }

  void fetchDealOfDay() async {
    product = await homeServices.dealOftheDay(context: context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return product == null
        ? const Loader()
        : product!.name.isEmpty
            ? const SizedBox()
            : Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: const Text(
                      "Deal of the day",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Image.network(
                    'https://m.media-amazon.com/images/I/51Yn1v7blLL._SL1080_.jpg',
                    height: 235,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      '₹ 49,999',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
                    child: const Text(
                      'Microsoft surface',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: product!.images
                          .map((e) => Image.network(
                                e,
                                fit: BoxFit.fitWidth,
                                width: 100,
                                height: 100,
                              ),
                              )
                          .toList(),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 15, left: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'See all deals',
                      style: TextStyle(
                        color: Colors.cyan[800],
                      ),
                    ),
                  )
                ],
              );
=======
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
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
  }
}
