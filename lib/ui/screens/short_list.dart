import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hmrent/ui/screens/rent_home_page.dart';

class ShortListPage extends StatefulWidget {
  const ShortListPage({super.key});

  @override
  State<ShortListPage> createState() => _ShortListPageState();
}

class _ShortListPageState extends State<ShortListPage> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
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
    );
  }
}
