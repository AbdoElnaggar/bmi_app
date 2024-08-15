// ignore_for_file: camel_case_types, override_on_non_overriding_member, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last, unused_local_variable

import 'dart:math';

import 'package:bmi_app/app_colors.dart';
import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';

class app_view extends StatefulWidget {
  app_view({super.key});

  @override
  State<app_view> createState() => _app_viewState();
}

int wiegth = 40;

int age = 0;
int higth = 170;
bool ismale = true;

class _app_viewState extends State<app_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: App_colors.backgroung,
        appBar: AppBar(
          title: Text(
            "BMI Calcoulator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: App_colors.backgroung,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //row of male and female
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    //male
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (ismale)
                                ? App_colors.primary
                                : App_colors.backgroung_container,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "male",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: App_colors.text,
                                ),
                              ),
                              Icon(
                                Icons.male,
                                size: 77,
                                color: App_colors.icon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    //female
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (!ismale)
                                ? App_colors.primary
                                : App_colors.backgroung_container,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 77,
                                color: App_colors.icon,
                              ),
                              Text(
                                "female",
                                style: TextStyle(
                                    fontSize: 20, color: App_colors.text),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //slider of higeth
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: App_colors.backgroung_container,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "higth",
                        style: TextStyle(color: App_colors.text, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            higth.toString(),
                            style:
                                TextStyle(color: App_colors.icon, fontSize: 35),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "cm",
                            style:
                                TextStyle(color: App_colors.text, fontSize: 15),
                          ),
                        ],
                      ),
                      Slider(
                        value: higth.toDouble(),
                        max: 220,
                        min: 110,
                        activeColor: App_colors.primary,
                        inactiveColor: App_colors.text,
                        onChanged: (value) {
                          setState(() {
                            higth = value.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

              //wigteh and age
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    //male
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: App_colors.backgroung_container,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "wiegth",
                              style: TextStyle(
                                  color: App_colors.text, fontSize: 20),
                            ),
                            Text(
                              wiegth.toString(),
                              style: TextStyle(
                                  color: App_colors.icon, fontSize: 35),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                      backgroundColor: App_colors.text),
                                  onPressed: () {
                                    setState(() {
                                      wiegth++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                      backgroundColor: App_colors.text),
                                  onPressed: () {
                                    if (wiegth > 30) {
                                      setState(() {
                                        wiegth--;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    //age
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: App_colors.backgroung_container,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  color: App_colors.text, fontSize: 20),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: App_colors.icon, fontSize: 35),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                      backgroundColor: App_colors.text),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                      backgroundColor: App_colors.text),
                                  onPressed: () {
                                    if (age > 0) {
                                      setState(() {
                                        age--;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //calc button
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      double result = (wiegth) / (higth * higth * .0001);

                      Navigator.pushNamed(context,'result',arguments: result);
                    },
                    child: Text(
                      "calcoulate",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ],
          ),
        ));
  }
}
