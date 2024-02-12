import 'package:figma/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EcofashBar extends StatelessWidget implements PreferredSizeWidget {
  const EcofashBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: Text(
        'EcoFash',
        style: GoogleFonts.zenAntique(
          textStyle: const TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => QRScanner()));
                },
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/Appbar_camera.png"))),
                ),
              ),
              SizedBox(width: 4.5),
              Image(
                image: AssetImage('images/Appbar_search.png'),
              ),
              SizedBox(width: 4.5),
              Image(
                image: AssetImage('images/Appbar_cart.png'),
              ),
            ],
          ),
        )
      ],
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      bottomOpacity: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
