import 'package:flutter/material.dart';
import 'praktikum.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Praktikum praktikum1 = Praktikum(
        namaModul: "Modul 1",
        temaModul: "Instalasi Flutter, Dart, Widget",
        presence: false);
    Praktikum praktikum2 = Praktikum(
        namaModul: "Modul 2",
        temaModul: "State, Navigation, Routing",
        presence: true,
        grade: "A");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.orange,
          ),
          title: const Text(
            "Pemrograman Mobile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body:
            // Padding(
            //   padding: const EdgeInsets.all(10),
            SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 195,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, right: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(
                                  praktikum1.getNamaModul(),
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5.0)),
                            Text(
                              praktikum1.getTemaModul(),
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(top: 50),
                                // ),
                                SizedBox(
                                    width: 125,
                                    height: 25,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ElevatedButton.icon(
                                        label: Text("Graded : E"),
                                        icon: const Icon(
                                          Icons.arrow_back_ios_rounded,
                                          color: Colors.white,
                                          size: 12.0,
                                        ),
                                        onPressed: () {
                                          print('Pressed');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 10, left: 10, top: 60),
                                ),
                                SizedBox(
                                  width: 125,
                                  height: 25,
                                  child: ElevatedButton(
                                    child: Text(
                                        "${praktikum1.getPresence() ? "Presence" : "Not Yet"}"),
                                    onPressed: () {
                                      print('Pressed');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: praktikum1.getPresence()
                                          ? Colors.green
                                          : Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 270,
                              height: 50,
                              child: ElevatedButton(
                                child: Text("Upload Attachment"),
                                onPressed: () {
                                  print('Pressed');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 195,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, right: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(
                                  praktikum2.getNamaModul(),
                                  style: const TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5.0)),
                            Text(
                              praktikum2.getTemaModul(),
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(top: 50),
                                // ),
                                SizedBox(
                                    width: 125,
                                    height: 25,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ElevatedButton.icon(
                                        label: Text(
                                            'Graded : ${praktikum2.getGrade()} '),
                                        icon: const Icon(
                                          Icons.arrow_back_ios_rounded,
                                          color: Colors.white,
                                          size: 12.0,
                                        ),
                                        onPressed: () {
                                          print('Pressed');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: 10, left: 10, top: 60),
                                ),
                                SizedBox(
                                  width: 125,
                                  height: 25,
                                  child: ElevatedButton(
                                    child: Text(
                                        "${praktikum2.getPresence() ? "Presence" : "Not Yet"}"),
                                    onPressed: () {
                                      print('Pressed');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: praktikum2.getPresence()
                                          ? Colors.green
                                          : Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 270,
                              height: 50,
                              child: ElevatedButton(
                                child: const Text(
                                  "View Attachment",
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.deepOrange,
                                  side: const BorderSide(
                                      color: Colors.deepOrange),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
