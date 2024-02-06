import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/widgets/custom_text_widget.dart';
import 'package:schemeinfo_demo/presentation/widgets/expadable_tile.dart';
import 'package:schemeinfo_demo/presentation/widgets/table_widget.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

class SchemeInfoScreen extends StatelessWidget {
  const SchemeInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomTextWidget01(
            textValue: "Scheme info",
            fontSize: 20,
            fontWeight: FontWeight.bold),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: const Color.fromARGB(255, 5, 17, 187),
                    height: mHight! * .18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.amber,
                            ),
                            fidth10,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextWidget01(
                                    textValue: "8,000",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontColors: Colors.white),
                                CustomTextWidget01(
                                  textValue: "Total Achived Points",
                                  fontColors: Colors.white,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                left: 0,
                right:
                    0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.calendar_month,
                                    size: 18, color: Colors.grey),
                                fidth10,
                                Expanded(
                                  child: CustomTextWidget01(
                                      textValue:
                                          "Created on 02 Sep 2023, 11:30:00 AM",
                                      fontColors: Colors.grey,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            fhight5,
                            CustomTextWidget01(
                                textValue: "Scheme ABCD",
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            CustomTextWidget01(
                                textValue: "SHEMEID#XXXX01",
                                fontColors: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                            fhight20,
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.yellow.shade200,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget01(
                                            textValue: "DD-MM-YY",
                                            fontWeight: FontWeight.bold),
                                        const Text("End Date")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget01(
                                          textValue: "DD-MM-YY",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        const Text("Start Date")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            fhight10,
                            RichText(
                              text: const TextSpan(
                                text: "State        :    ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Kerala",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight
                                            .bold), // Add style if needed
                                  ),
                                ],
                              ),
                            ),
                            fhight5,
                            RichText(
                              text: const TextSpan(
                                text: "District     :    ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Eranakulam, Trissure, Malappuram",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight
                                            .bold), // Add style if needed
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        color: Colors.grey.withOpacity(0.3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Eligible product List",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Card2(
                                    index: index,
                                  );
                                },
                                itemCount: 3),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget01(
                                textValue: "Point Target List",
                                fontColors: Colors.blue,
                                fontWeight: FontWeight.bold),
                            fhight5,
                            buildHolidayTable(holidayData: []),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget01(
                                textValue: "Remarks",
                                fontWeight: FontWeight.w500,
                                fontColors: Colors.grey),
                            fhight5,
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
