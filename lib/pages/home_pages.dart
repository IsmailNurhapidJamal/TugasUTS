import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPages extends StatelessWidget {
  const MenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget hotItemHeader() {
      Widget hotItemCard(String img, String text) {
        return Container(
          margin: EdgeInsets.only(left: 20, right: 7),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          child: Column(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              'Hot Item',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              hotItemCard(
                "assets/favorite_img_4.jpg","Cactus\n \$18"),
              hotItemCard(
                  "assets/favorite_img_2.jpg", "Traditional Chair\n \$24"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              hotItemCard(
                "assets/favorite_img_3.jpeg", "Wooden Chair\n \$44"),
              hotItemCard(
                "assets/favorite_img_1.jpg", "Elegant Lamp\n \$13"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              hotItemCard(
                "assets/favorite_img_5.jpg", "Beach Beautiful\n \$36"),
              hotItemCard(
                "assets/favorite_img_6.jpg", "Architectural\n \$30"),
            ],
          )
        ],
      );
    }

    Widget ikeaHeader() {
      Widget ikeaCard(String img, String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 7),
                  padding: EdgeInsets.all(10),
                  height: 90,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(img))),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(IconData(0xe09b,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true))
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              'Category',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    ikeaCard("assets/plant_white_bg.png", "Plant"),
                    ikeaCard("assets/lamp_white_bg.png", "Lamp"),
                    ikeaCard("assets/chair_white_bg.png", "Chair"),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color(0xffFB13C8),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Discover',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'What are you looking for',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Akun')]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ikeaHeader(), hotItemHeader()],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Color(0xffFB13C8),
      child: Icon(Icons.favorite_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
