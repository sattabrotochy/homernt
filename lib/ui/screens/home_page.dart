import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmrent/ui/screens/rent_home_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> images = [
    const Image(
      image: AssetImage(
        "assets/img/2.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/3.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/1.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/2.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/3.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/1.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/2.jpg",
      ),
      fit: BoxFit.fill,
    ),
    const Image(
      image: AssetImage(
        "assets/img/3.jpg",
      ),
      fit: BoxFit.fill,
    ),
  ];
  List<String> location = [
    "Tilagor",
    "Bondor",
    "Uposohor",
    "Housing Estate",
    "Ambarkhana",
    "Uposohor",
    "Housing Estate",
    "Ambarkhana",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                viewportFraction: .9,
              ),
              items:  <Padding>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [

                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          image: AssetImage(
                            "assets/img/slider/slider1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Looking For the Best Home?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 15,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Welcome! You are in the right place.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 25,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: (){},
                                child: const Text("Rake In")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          image: AssetImage("assets/img/slider/slider2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Are you looking for a tenant for your house?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 15,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Upload here & rake in thousands of taka!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 25,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: (){},
                                child: const Text("Rake In")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image(
                          image: AssetImage("assets/img/slider/slider3.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Just Dream! We'll Fulfil it.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 15,
                            decoration: const BoxDecoration(
                                color: Colors.black38
                            ),
                            child: const Text(
                              "Snatch The Opportunity & Live Without Tension!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 25,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: (){},
                                child: const Text("About Us")),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisExtent: 220,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RentHomePage(),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: Material(
                      elevation: 10,
                      shadowColor: Colors.deepPurple,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 130, // Check if this height is suitable
                              child: ClipRRect(
                                child: images[index],
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "Bachelor/Family",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "৳ 2000 monthly",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      color: Colors.red,
                                    ),
                                    Text("Tilagor, Sylhet"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
