import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

class SchemeInfoScreen extends StatelessWidget {
  const SchemeInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Scheme info"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: mHight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    height: mHight! * .18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.amber,
                            ),
                            fidth10,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "8,000",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Total Achived Points")
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
                left: 0, // Aligns the container to the left of the Stack
                right:
                    0, // Aligns the container to the right of the Stack, ensuring it stretches across
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month),
                                Text("Created on 02 Sep 2023, 11:30:00 AM"),
                              ],
                            ),
                            Text("Scheme ABCD"),
                            Text("SHEMEID#XXXX01"),
                            Container(
                              color: Colors.yellow.shade200,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("DD-MM-YY"),
                                        Text("End Date")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("DD-MM-YY"),
                                        Text("Start Date")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text("State        :       Kerala"),
                            Text(
                                "District     :    Ernanakulam, Trissure, Malappuram")
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        color: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eligible product List",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Card2();
                                },
                                itemCount: 3),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Point Target List"),
                            buildHolidayTable(holidayData: []),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Remarks"),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever")
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

Widget buildHolidayTable({required holidayData}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
          spreadRadius: 1
        )
      ]
    ),
    child: Table(
      border: TableBorder.all(color: Colors.white30),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
         TableRow(
          decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5)),
          children: const [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Target Point"),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Target Reward"),
              ),
            ),
          ],
        ),
        ...List.generate(
          2,
          (index) => TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${index + 1}"),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("hiii"),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildButton(BuildContext context, {required bool isExpanded}) {
  return IconButton(
    icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
    onPressed: () {
      ExpandableController.of(context, required: true)!.toggle();
    },
  );
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildCollapsed() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Expandable",
              style: TextStyle(color: Colors.black),
            ),
            Builder(
              builder: (context) {
                var isExpanded =
                    ExpandableController.of(context, required: true)!.expanded;
                return buildButton(context, isExpanded: isExpanded);
              },
            ),
          ],
        ),
      );
    }

    Widget buildExpanded() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Expandable",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Main Category    :",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "Item Category     :",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "Point per item     :",
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            Builder(
              builder: (context) {
                var isExpanded =
                    ExpandableController.of(context, required: true)!.expanded;
                return buildButton(context, isExpanded: isExpanded);
              },
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Expandable(
          collapsed: buildCollapsed(),
          expanded: buildExpanded(),
        ),
      ),
    );
  }
}
