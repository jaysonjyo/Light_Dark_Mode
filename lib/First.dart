import 'package:flutter/material.dart';

import 'changethemebutton.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<String> image = [
    "assets/car.jpg",
    "assets/b.jpg",
    "assets/c.jpg",
    "assets/d.jpg"
  ];
  List<String> name = ["Audi", "KTM Rc", "Lamborghini", "BMW"];
  List<dynamic> price = [
    "₹ 5800 /Day",
    "₹ 1500 /Day",
    "₹ 6500 /Day",
    "₹ 6500 /Day"
  ];
  List<dynamic> about = [
    "The Audi S3, especially the 8V generation (2015-2020), is considered a good choice for tuning because of its turbocharged engine and all-wheel drive.",
    "The KTM RC 390 is powered by a 373.27 cc air-cooled engine which produces 43.5 PS @ 9000 rpm of power. It has a fuel tank of 13.7 L and a claimed mileage of 25.89 kmpl.",
    "Automobili Lamborghini S.p.A. is an Italian manufacturer of luxury sports cars and SUVs based in Sant'Agata Bolognese.",
    "BMW's iDrive infotainment system is available in its 8th generation, with new displays, controls, and software. "

  ];

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery
        .of(context)
        .platformBrightness == Brightness.dark
        ? "Dark Theme"
        : "Light Theme";
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.format_align_justify,
        ),
        title: Text(
          "Rent vehicle ",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          //   IconButton(

          Change_themebutton()
          //       onPressed: () {
          //         setState(() {
          //           iconbool = !iconbool;
          //         });
          //       },
          //       icon: Icon(iconbool ? dark : light))
        ],
      ),
      // body: Center(
      //   child: Text("hello" + text),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      childAspectRatio: 150 / 200,
                      children: List.generate(image.length, (index) {
                        return Container(
                            width: 150,
                            height: 150,
                            decoration: ShapeDecoration(
                                color: Theme
                                    .of(context)
                                    .primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: 170,
                                    height: 100,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(19),
                                                topLeft: Radius.circular(19)),
                                            side: BorderSide(
                                                width: 1, color: Theme
                                                .of(context).colorScheme.secondary))),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(18),
                                            topLeft: Radius.circular(18)),
                                        child: Image(
                                          image: AssetImage(image[index]),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                      SizedBox(height: 5,),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 9,),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ), SizedBox(height: 5,),
                                    Text(
                                    about[index],
                                    style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10),
                                  ),
                                ],
                              ),
                            ),

                            ]),)
                        ,
                        );
                      })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
