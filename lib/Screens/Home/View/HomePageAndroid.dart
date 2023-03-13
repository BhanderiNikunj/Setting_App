import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_app/Screens/Home/Provider/HomeProvider.dart';

class HomeScreenAndroid extends StatefulWidget {
  const HomeScreenAndroid({Key? key}) : super(key: key);

  @override
  State<HomeScreenAndroid> createState() => _HomeScreenAndroidState();
}

class _HomeScreenAndroidState extends State<HomeScreenAndroid> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings UI"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Common",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.red),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.language),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Language",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("English"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.cloud_outlined),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "environment",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("production"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.red),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.call),
                        SizedBox(width: 20),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Text(
                          "email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.logout),
                        SizedBox(width: 20),
                        Text(
                          "Sign out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Security",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.red),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.phonelink_lock),
                            SizedBox(width: 20),
                            Text(
                              "Lock App In Background",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Switch(
                              value: homeProvidertrue!.s1,
                              focusColor: Colors.red,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                homeProviderfalse!.Chang1(value);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.fingerprint),
                            SizedBox(width: 20),
                            Text(
                              "Use Fingerprint",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Switch(
                              value: homeProvidertrue!.s2,
                              focusColor: Colors.red,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                homeProviderfalse!.Chang2(value);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.password),
                            SizedBox(width: 20),
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Switch(
                              value: homeProvidertrue!.s3,
                              focusColor: Colors.red,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                homeProviderfalse!.Chang3(value);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Misc",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.red),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.description),
                            SizedBox(width: 20),
                            Text(
                              "Terms Of Service",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.tab_rounded),
                            SizedBox(width: 20),
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
