import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'auth/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late String _name ='';
  late String _email = '';
  late String _mobileNumber = '';
  late String _nid = '';
  late String _location = '';

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
      await _firestore.collection('users').doc(user.uid).get();

      if (snapshot.exists) {
        setState(() {
          _name=snapshot['name'];
          _email = snapshot['email'];
          _mobileNumber = snapshot['mobile'];
          _nid = snapshot['nid'];
          _location = snapshot['location'];
        });
      }
    }
  }

  void signUserOut() {
    _auth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
               Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: CircleAvatar(
                        radius: 100,
                        child: Icon(Icons.person,
                          size: 100,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('$_name', style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("Active Since 2019"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: (){},
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 8,right: 10,bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Personal Information"),
                      Text("Edit")
                    ],
                  ),
                ),
              ),
               Card(
                color: Colors.white60,
                elevation: .1,
                child: ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text("Email"),
                  trailing: Text('$_email', style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
              ),
               Card(
                color: Colors.white60,
                elevation: .1,
                child: ListTile(
                  leading: Icon(Icons.phone_android_outlined),
                  title: Text("Mobile"),
                  trailing: Text('$_mobileNumber', style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
              ),
               Card(
                color: Colors.white60,
                elevation: .1,
                child: ListTile(
                  leading: Icon(Icons.document_scanner_outlined),
                  title: Text("NID"),
                  trailing: Text('$_nid', style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
              ),
               Card(
                color: Colors.white60,
                elevation: .1,
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Location"),
                  trailing: Text('$_location', style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white60,
                elevation: .1,
                child: ListTile(
                  onTap: (){
                    signUserOut();
                  },
                  leading: const Icon(Icons.logout_sharp),
                  title: const Text("Sign Out"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

