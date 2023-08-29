import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/Widgets/ProfilePage_Widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Profile_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                // color: Colors.amber,
                height: 200,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      // color: Colors.blue,
                      height: 50,
                      width: 50,
                      child: IconButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                ),
                              },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.red,
                      height: 150,
                      width: size.width,
                      child: const CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage:
                            AssetImage('assets/images/Profile_1.jpeg'),
                        radius: 60,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                padding: const EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                height: 35,
                width: size.width,
                child: const Text(
                  "Piyush Saklani",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                // color: Colors.pink,
                alignment: Alignment.topCenter,
                height: 25,
                width: size.width,
                child: const Text(
                  "piyushsaklani08@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              // Container(
              //   // color: Colors.amber,
              //   //? ^^
              //   height: 12,
              //   width: size.width,
              //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.black12,
              //         borderRadius: BorderRadius.circular(20)),
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                // color: Colors.pink,
                //? ^^
                height: 460,
                width: size.width,
                child: Column(
                  children: const [
                    ProfilePage_widget(
                        inputone: "Name :", inputtwo: "Piyush Saklani"),
                    ProfilePage_widget(inputone: "CGPA :", inputtwo: "8.5"),
                    ProfilePage_widget(
                        inputone: "Year :", inputtwo: "2020 - 2024"),
                    ProfilePage_widget(
                        inputone: "Degree :", inputtwo: "B.Tech CSE"),
                    ProfilePage_widget(inputone: "Id :", inputtwo: "BT20HCS000"),
                    ProfilePage_widget(
                        inputone: "Current Semester :", inputtwo: "4th"),
                    ProfilePage_widget(inputone: "State :", inputtwo: "Delhi"),
                    ProfilePage_widget(
                        inputone: "D.O.B :", inputtwo: "01 Jan 2000"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
