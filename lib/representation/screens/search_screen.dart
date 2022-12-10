import 'package:flutter/material.dart';
import 'package:travel_app/representation/screens/detail_screen.dart';
import 'package:travel_app/representation/widgets/back_button_widget.dart';
import '../../models/trip_model.dart';
import '../../network/networkRequest.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<TripModel> result = [];
  List<TripModel> tripModel = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchTrips().then((dataFromServer) {
      setState(() {
        result = dataFromServer;
        tripModel = result;
      });
    });
  }

  @override
  void searchPlaces(String value) {
    setState(() {
      if (value.isEmpty) {
        tripModel = result;
      } else {
        tripModel = result
            .where((element) =>
                element.name!.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButtonWidget(mode: "dark"),
                      Container(
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(27, 30, 40, 1),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(13, 110, 253, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 48,
                        margin: const EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(247, 247, 249, 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          onChanged: (value) => searchPlaces(value),
                          autofocus: true,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(125, 132, 141, 1),
                              letterSpacing: 0.3),
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Icon(Icons.search),
                              ),
                              contentPadding:
                                  const EdgeInsets.only(left: 14.0, top: 16.0),
                              hintText: "Search Places",
                              border: InputBorder.none,
                              suffixIcon: Container(
                                margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                                padding: EdgeInsets.only(left: 15, right: 15),
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                  color: Color.fromRGBO(125, 132, 141, 1)
                                      .withOpacity(0.3),
                                  width: 1,
                                ))),
                                child: Icon(Icons.mic),
                              )),
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Search Places',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        height: 640,
                        child: GridView.builder(
                            itemCount: tripModel.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 1.5),
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      DetailScreen.routeName,
                                      arguments: tripModel[index]);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(
                                            1, 2), // changes position of shadow
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              child: Image.network(
                                                '${tripModel[index].img}',
                                                width: 137,
                                                height: 124,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              top: 8,
                                              right: 12,
                                              child: Container(
                                                width: 24,
                                                height: 24,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    color: Colors.white
                                                        .withOpacity(0.2),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors
                                                            .transparent)),
                                                child: Image.asset(
                                                  'assets/icons/heart.png',
                                                  color: Colors.red,
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
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$${tripModel[index].price}/',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    13, 110, 253, 1),
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.3),
                                          ),
                                          Text(
                                            'Person',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    125, 132, 141, 1),
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.3),
                                          )
                                        ],
                                      ),
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
            )
          ],
        ),
      ),
    );
  }
}
