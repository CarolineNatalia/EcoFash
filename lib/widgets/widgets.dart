import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridViews extends StatelessWidget {
  String name;
  int price;
  String url;
  GridViews(
      {super.key, required this.name, required this.price, required this.url});
  // const GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 25,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/$url'), fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21WN',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$$price',
                    style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(color: Colors.red)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductColor extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductColor({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ProductDetailedView extends StatelessWidget {
  String productName = '';
  String productDescription = '';
  int productPrice = 0;
  ProductDetailedView(
      {super.key,
      required this.productName,
      required this.productDescription,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Home_page_1.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  productDescription,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  '\$$productPrice',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductInformation extends StatelessWidget {
  String title = '';
  String content = '';
  ProductInformation({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                content,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ));
  }
}

class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.close,
                  size: 30,
                ),
              ],
            ),
            Text(
              'WISHLIST',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 24),
              ),
            ),
            const Image(
              image: AssetImage('images/Home_page_garis.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '0 ITEM(S)',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  "THERE'S NO WISHLIST",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'SELECT PRODUCT',
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class WishlistItems extends StatelessWidget {
  const WishlistItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
