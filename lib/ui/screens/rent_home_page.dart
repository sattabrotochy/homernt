import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RentHomePage extends StatefulWidget {
  const RentHomePage({super.key});

  @override
  State<RentHomePage> createState() => _RentHomePageState();
}

class _RentHomePageState extends State<RentHomePage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late String _title='';
  late String _address='';
  late String _rent='';
  late String _advance='';
  late String _description='';
  late String _washroom='';
  late String _balcony='';
  late String _bedroom='';
  late String _kitchen='';
  late List<String> imageUrls = [];

  FirebaseAuth _auth = FirebaseAuth.instance;
  late String _userId;

  @override
  void initState() {
    super.initState();
    // Get the current user ID
    _userId = _auth.currentUser!.uid;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.redAccent,
              ),
              onPressed: () {},
            ),
          ),
        ],
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: StreamBuilder(stream:FirebaseFirestore.instance
          .collection("ads")
          .where("userId", isEqualTo: _userId).snapshots() ,
        builder: (context,datas){
        if(datas.connectionState==ConnectionState.active){
            if(datas.hasData){

              _title = datas.data!.docs[0]['title'];
              _rent = datas.data!.docs[0]['rent'];
              _advance = datas.data!.docs[0]['advanceDeoposite'];
              _balcony = datas.data!.docs[0]['baalcony'];
              _kitchen = datas.data!.docs[0]['kiitchen'];
              _bedroom = datas.data!.docs[0]['bedroom'];
              _washroom = datas.data!.docs[0]['washroom'];
              _description = datas.data!.docs[0]['description'];
              _address=datas.data!.docs[0]['address'];

              imageUrls = List<String>.from(datas.data!.docs[0]['images']);
                return SafeArea(
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                 ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    '$_title',
                                    style: TextStyle(
                                        fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('$_address'),
                                ),
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 3 / 2,
                                  ),
                                  itemCount: imageUrls.length,
                                  itemBuilder: (context, index) {
                                     return  Image.network(imageUrls[index]);
                                     //Image(
                                  //       image: AssetImage("assets/img/1.jpg"));
                                   },
                                ),
                                 Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Apartment owned by Mr.Y",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            )),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '$_bedroom Bedrooms with $_washroom Washrooms',
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            )),
                                        child:  Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                           '$_balcony Balcony' ,
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(20)),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            )),
                                        child:  Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '$_kitchen Kitchen & Dining',
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                   child: Text('$_description',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                     textAlign: TextAlign.justify,
                                   ),
                                  // Text(
                                  //   '$_descrep',
                                  //   style: TextStyle(
                                  //       fontSize: 12, fontWeight: FontWeight.normal),
                                  //   textAlign: TextAlign.justify,
                                  // ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rent/Month : ",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                      //Text("${datas.data!.docs.firstWhere((doc) => doc.id == _userId)["rent"] ?? "N/A"}")
                                      Text(
                                      '$_rent',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Advanced Deposite : $_advance',
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "5.000 BDT",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                // const Padding(
                                //   padding: EdgeInsets.all(8.0),
                                //   child: Text(
                                //     "★Pay the service charge & Secure an appointment with owner",
                                //     maxLines: 3,
                                //     textAlign: TextAlign.left,
                                //     style: TextStyle(
                                //       color: Colors.red,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    elevation: 0,
                                    side: const BorderSide(width: 1, color: Colors.red),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14))),
                                onPressed: () {},
                                child: const Text(
                                  "Book an Appointment",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                );

          }
            else if(datas.hasError){
              return Center(child: Text("${datas.hasError.toString()}"),);
            }
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
        return Container();
        },)
    );
  }
}
