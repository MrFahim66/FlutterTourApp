import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/representation/screens/detail_screen.dart';
import 'package:travel_app/representation/screens/main_app.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';
import '../../models/trip_model.dart';
import '../../network/networkRequest.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({Key? key}) : super(key: key);

  static String routeName = '/destination_screen';

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  List<TripModel> tripModel = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchTrips().then((dataFromServer) {
      setState(() {
        tripModel = dataFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButtonWidget(
                        mode: "dark",
                        onTap: () {
                          Navigator.of(context).pushNamed(MainApp.routeName);
                        },
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Best Destination",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(27, 30, 40, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Best Destination',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 35, top: 28, right: 10),
                              height: 640,
                              child: GridView.builder(
                                  itemCount: tripModel.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: MediaQuery.of(context)
                                            .size
                                            .width /
                                        (MediaQuery.of(context).size.height /
                                            1.6),
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 5.0,
                                  ),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            DetailScreen.routeName,
                                            arguments: tripModel[index]);
                                      },
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.network(
                                                      '${tripModel[index].img}',
                                                      width: 137,
                                                      height: 124,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 10,
                                                    right: 12,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          color: Colors.white
                                                              .withOpacity(0.2),
                                                          border: Border.all(
                                                              width: 2,
                                                              color: Colors
                                                                  .transparent)),
                                                      child: SvgPicture.asset(
                                                        'assets/icons/heart.svg',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              '${tripModel[index].name}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Color.fromRGBO(
                                                      125, 132, 141, 1),
                                                  size: 12,
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Text(
                                                  '${tripModel[index].address}',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          125, 132, 141, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.3),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
