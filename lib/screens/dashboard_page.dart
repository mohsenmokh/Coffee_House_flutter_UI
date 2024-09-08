import 'package:coffee_house_1/data/coffee_item.dart';
import 'package:coffee_house_1/screens/item_detail.dart';
import 'package:coffee_house_1/widgets/build_bottom_bar.dart';
import 'package:coffee_house_1/color_palette.dart';
import 'package:coffee_house_1/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

class DashBoardpage extends StatefulWidget {
  const DashBoardpage({super.key});

  @override
  State<DashBoardpage> createState() => _DashBoardpageState();
}

class _DashBoardpageState extends State<DashBoardpage> {
  final List<String> coffeeTypes = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Flat white'
  ];
  String selectedItem = 'Cappuccino';
  int counter = -1;

  final List<CoffeeItem> coffeeList = [
    CoffeeItem(
        rating: 4.5,
        itemImg: 'assets/images/coffeemain.jpg',
        price: 4.21,
        subtitle: 'With Oat Milk',
        title: 'Cappuccino'),
    CoffeeItem(
        rating: 4.2,
        itemImg: 'assets/images/secondary.jpg',
        price: 3.14,
        subtitle: 'With Chocolate',
        title: 'Cappuccino')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BuildBottomBar(),
        backgroundColor: ColorPalette().scaffoldBg,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 25, 15, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            color: const Color(0xff1F242C),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Iconify(HeroiconsSolid.view_grid,
                            size: 12, color: Color(0xFF4D4F52)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/model.png'),
                              fit: BoxFit.cover,
                            ),
                            color: const Color(0xff1F242C),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 15),
                width: (MediaQuery.of(context).size.width / 3) * 2 + 25,
                child: Text(
                  'Find the best coffee for you',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MySearchBar(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                            begin: Alignment(0.9, -1),
                            end: Alignment(1, -1),
                            colors: [Colors.black, Colors.transparent])
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.dstATop,
                  child: Container(
                    color: const Color(0xFF0D0F14),
                    width: MediaQuery.of(context).size.width - 20.0,
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...coffeeTypes.map((e) {
                          counter++;
                          if (counter <= 3) {
                            return _buildTypes(e, counter);
                          } else {
                            counter = 0;
                            return _buildTypes(e, counter);
                          }
                        })
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 1) - 50,
                child: ListView(
                  padding: const EdgeInsets.only(top: 15),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        color: const Color(0xFF0D0F14),
                        height: 225,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...coffeeList.map((e) {
                              return _buildCoffeeItem(e);
                            }),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 15.0, top: 10.0),
                      child: Text('Special for you',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 20, color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 150,
                        width: MediaQuery.of(context).size.width - 20.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  ColorPalette().gradientTopLeft,
                                  Colors.black
                                ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 115.0,
                              width: 125.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/beansbottom.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 115.0,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100.0,
                                    width: MediaQuery.of(context).size.width -
                                        185.0,
                                    child: Text('5 Coffee Beans You Must Try !',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                fontSize: 22,
                                                color: Colors.white)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildTypes(coffee, counter) {
    return Padding(
      padding: counter != 0
          ? const EdgeInsets.only(left: 25.0)
          : const EdgeInsets.only(left: 7.0),
      child: Container(
        height: 50.0,
        color: const Color(0xFF0D0F14),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = coffee;
                });
              },
              child: Text(
                coffee,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: coffee == selectedItem
                        ? ColorPalette().coffeeSelected
                        : ColorPalette().coffeeUnselected,
                    fontSize: 17.0),
              ),
            ),
            const SizedBox(height: 4.0),
            Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: coffee == selectedItem
                      ? ColorPalette().coffeeSelected
                      : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCoffeeItem(CoffeeItem cItem) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ItemDetail(cItem: cItem)));
        },
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ColorPalette().gradientTopLeft, Colors.black])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                height: 140,
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Hero(
                            tag: cItem.itemImg.toString(),
                            child: Container(
                              width: 130,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(cItem.itemImg!),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                            ))),
                    Positioned(
                        right: 10.0,
                        top: 10.0,
                        child: Container(
                          height: 25.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: const Color(0xFF342520).withOpacity(0.7),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: ColorPalette().coffeeSelected,
                                  size: 15.0,
                                ),
                                Text(cItem.rating.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Colors.white, fontSize: 15))
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  cItem.title!,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  cItem.subtitle!,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                        color: const Color(0xff777979),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40.0,
                      width: 60.0,
                      child: Row(
                        children: [
                          Iconify(
                            Bx.dollar,
                            color: ColorPalette().coffeeSelected,
                            size: 18,
                          ),
                          Text(cItem.price.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //To Do
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: ColorPalette().coffeeSelected,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 11.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
