import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bloglistview extends StatefulWidget {
  const Bloglistview({Key? key}) : super(key: key);

  @override
  State<Bloglistview> createState() => _BloglistviewState();
}

class _BloglistviewState extends State<Bloglistview> {
  final List<Map<String, dynamic>> blogEntries = [
    {
      'title': 'Blog Title 1',
      'tags': ['News', 'Fashion'],
    },
    {
      'title': 'Blog Title 2',
      'tags': ['Fact', 'Tips'],
    },
    {
      'title': 'Blog Title 3',
      'tags': ['Opinion', 'Fashion'],
    },
    {
      'title': 'Blog Title 4',
      'tags': ['Review', 'Tips'],
    },
    {
      'title': 'Blog Title 5',
      'tags': ['Tips', 'Fashion'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //=========================== Navbar Container=============================
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  width: double.infinity,
                  color: Colors.grey, // Set your desired navbar color
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Eco Fash',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //=============================Judul================================
                Container(
                  // padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'BLOG',
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Image(image: AssetImage('images/Home_page_garis.png')),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var tag in [
                              'Tag 1',
                              'Tag 2',
                              'Tag 3',
                              'Tag 4',
                              'Tag 5',
                              'Tag 6'
                            ])
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // munculin berita yang sesuai
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shadowColor: Colors.transparent,
                                    primary: Colors.black12,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    tag,
                                    style: GoogleFonts.tenorSans(
                                      textStyle: TextStyle(
                                        fontSize:
                                            15, // Adjust the font size as needed
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ====================================Isi==========================================
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      for (var blog in blogEntries)
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 340,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('images/Blog_grid_view_1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 340,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0),
                                          Colors.black,
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            blog['title'] ?? '',
                                            style: GoogleFonts.tenorSans(
                                              textStyle:
                                                  const TextStyle(fontSize: 16),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 5, 0),
                              width: 340,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      for (var tag in blog['tags'])
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            '#$tag',
                                            style: GoogleFonts.tenorSans(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '4 Days Ago',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                    ],
                  ),
                ),

                // =============Pencetan Load more================
                Container(
                  // Ukuran container Buttonnya
                  width: 270,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.grey, width: 2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "LOAD MORE",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add space between "LOAD MORE" and "+"
                        Text(
                          "+",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // ============================Footer===============================
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/Twitter.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/Instagram.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/YouTube.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'support@ecofash',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '+12 123 456 7896',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '08.00 - 22.00 - Everday',
                      style: GoogleFonts.tenorSans(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Contact',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Blog',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
