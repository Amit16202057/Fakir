// import 'NavBar.dart';
// import 'constants/colors.dart';
// import 'model/banner_model.dart';
// import 'product_detail_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// final _control = PageController();

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
// //     return Scaffold(
// //       drawer: NavBar(),
// //       ..
// // );
//     return Scaffold(
//       drawer: NavBar()
//       appBar: AppBar(
//         title: const Text(data),
//       ),
//       // backgroundColor: backgroundColor,
//       // body: SafeArea(
//       //   child: CustomScrollView(
//       //     slivers: [
//       //       AppBarr(),
//       //       SearchBox(),
//       //       bannerr(),
//       //       SliverPadding(
//       //         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//       //         sliver: SliverGrid(
//       //           delegate: SliverChildBuilderDelegate(
//       //             (context, index) {
//       //               return GestureDetector(
//       //                 onTap: () {
//       //                   Navigator.of(context).push(
//       //                     MaterialPageRoute(
//       //                       builder: (BuildContext context) =>
//       //                           ProductDetailScreen(
//       //                         index: index,
//       //                       ),
//       //                     ),
//       //                   );
//       //                 },
//       //                 child: Container(
//       //                   decoration: BoxDecoration(
//       //                     color: Colors.white,
//       //                     borderRadius: BorderRadius.circular(15),
//       //                   ),
//       //                   child: Stack(
//       //                     children: [
//       //                       Padding(
//       //                         padding: const EdgeInsets.only(bottom: 110),
//       //                         child: Image.asset(
//       //                           'images/${index + 1}.jpg',
//       //                           height: 200,
//       //                           width: 190,
//       //                           fit: BoxFit.cover,
//       //                         ),
//       //                       ),
//       //                       Positioned(
//       //                         top: 155,
//       //                         left: 20,
//       //                         child: Text(
//       //                           banners()[index].name!,
//       //                           style: TextStyle(
//       //                             fontSize: 18,
//       //                             fontWeight: FontWeight.bold,
//       //                           ),
//       //                         ),
//       //                       ),
//       //                       Positioned(
//       //                         top: 210,
//       //                         right: 0,
//       //                         left: 0,
//       //                         child: Padding(
//       //                           padding:
//       //                               const EdgeInsets.symmetric(horizontal: 15),
//       //                           child: Row(
//       //                             mainAxisAlignment:
//       //                                 MainAxisAlignment.spaceBetween,
//       //                             children: [
//       //                               Text(
//       //                                 '\$ ' + banners()[index].price!,
//       //                                 style: TextStyle(
//       //                                   fontSize: 18,
//       //                                   fontWeight: FontWeight.bold,
//       //                                   color: mains.withOpacity(0.7),
//       //                                 ),
//       //                               ),
//       //                               Container(
//       //                                 child: Icon(
//       //                                   Icons.shopping_cart_outlined,
//       //                                   color: Colors.white,
//       //                                 ),
//       //                                 width: 40,
//       //                                 height: 40,
//       //                                 decoration: BoxDecoration(
//       //                                   color: mains.withOpacity(0.7),
//       //                                   borderRadius: BorderRadius.circular(11),
//       //                                 ),
//       //                               ),
//       //                             ],
//       //                           ),
//       //                         ),
//       //                       ),
//       //                     ],
//       //                   ),
//       //                 ),
//       //               );
//       //             },
//       //             childCount: 4,
//       //           ),
//       //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //             crossAxisCount: 2,
//       //             mainAxisExtent: 270,
//       //             crossAxisSpacing: 10,
//       //             mainAxisSpacing: 10,
//       //           ),
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }

//   // SliverToBoxAdapter bannerr() {
//   //   return SliverToBoxAdapter(
//   //     child: Column(
//   //       children: [
//   //         Container(
//   //           height: 200,
//   //           width: double.infinity,
//   //           child: PageView(
//   //             controller: _control,
//   //             scrollDirection: Axis.horizontal,
//   //             children: [
//   //               Padding(
//   //                 padding:
//   //                     const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//   //                 child: Container(
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(10),
//   //                     color: Colors.white,
//   //                   ),
//   //                   child: banner_builder(0),
//   //                 ),
//   //               ),
//   //               Padding(
//   //                 padding:
//   //                     const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//   //                 child: Container(
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(10),
//   //                     color: Colors.white,
//   //                   ),
//   //                   child: banner_builder(1),
//   //                 ),
//   //               ),
//   //               Padding(
//   //                 padding:
//   //                     const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//   //                 child: Container(
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(10),
//   //                     color: Colors.white,
//   //                   ),
//   //                   child: banner_builder(2),
//   //                 ),
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //         SmoothPageIndicator(
//   //           controller: _control,
//   //           count: 3,
//   //           effect: WormEffect(
//   //             dotHeight: 11,
//   //             dotWidth: 11,
//   //             activeDotColor: Color(0xffFF033E),
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Row banner_builder(int count) {
//   //   return Row(
//   //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//   //     crossAxisAlignment: CrossAxisAlignment.center,
//   //     children: [
//   //       SizedBox(width: 5),
//   //       Column(
//   //         crossAxisAlignment: CrossAxisAlignment.start,
//   //         children: [
//   //           SizedBox(height: 30),
//   //           Text(
//   //             'New Relase',
//   //             style: TextStyle(
//   //               color: mains,
//   //               fontSize: 16,
//   //             ),
//   //           ),
//   //           SizedBox(height: 4),
//   //           Text(
//   //             banners()[count].name!,
//   //             style: TextStyle(
//   //               fontWeight: FontWeight.bold,
//   //               fontSize: 20,
//   //             ),
//   //           ),
//   //           SizedBox(height: 4),
//   //           Text(
//   //             'Force 1',
//   //             style: TextStyle(
//   //               fontWeight: FontWeight.bold,
//   //               fontSize: 20,
//   //             ),
//   //           ),
//   //           SizedBox(height: 20),
//   //           Container(
//   //             alignment: Alignment.center,
//   //             width: 90,
//   //             height: 37,
//   //             decoration: BoxDecoration(
//   //               borderRadius: BorderRadius.circular(10),
//   //               color: mains,
//   //             ),
//   //             child: Text(
//   //               'buy Now',
//   //               style: TextStyle(
//   //                 color: Colors.white,
//   //                 fontSize: 16,
//   //                 fontWeight: FontWeight.bold,
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //       RotationTransition(
//   //         turns: AlwaysStoppedAnimation(-30 / 360),
//   //         child: Image.asset(
//   //           'images/${banners()[count].image!}',
//   //           height: 210,
//   //           width: 210,
//   //           fit: BoxFit.cover,
//   //         ),
//   //       ),
//   //     ],
//   //   );
//   // }

//   // SliverToBoxAdapter SearchBox() {
//   //   return SliverToBoxAdapter(
//   //     child: Padding(
//   //       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//   //       child: Row(
//   //         children: [
//   //           Expanded(
//   //             child: Container(
//   //               height: 50,
//   //               decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(10),
//   //                 color: Colors.white,
//   //               ),
//   //               child: Row(
//   //                 crossAxisAlignment: CrossAxisAlignment.center,
//   //                 children: [
//   //                   SizedBox(width: 15),
//   //                   Icon(Icons.search, color: Colors.grey),
//   //                   SizedBox(width: 15),
//   //                   Text(
//   //                     'Search your shoes',
//   //                     style: TextStyle(
//   //                       color: Color.fromARGB(255, 194, 187, 187),
//   //                       fontWeight: FontWeight.w600,
//   //                     ),
//   //                   ),
//   //                 ],
//   //               ),
//   //             ),
//   //             flex: 6,
//   //           ),
//   //           SizedBox(width: 10),
//   //           Expanded(
//   //             child: Container(
//   //               height: 50,
//   //               decoration: BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(10),
//   //                 color: mains,
//   //               ),
//   //               child: Icon(
//   //                 Icons.filter_alt,
//   //                 color: Colors.white,
//   //                 size: 27,
//   //               ),
//   //             ),
//   //             flex: 1,
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // SliverToBoxAdapter AppBarr() {
//   //   return SliverToBoxAdapter(
//   //     child: Padding(
//   //       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//   //       child: Row(
//   //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //         children: [
//   //           Container(
//   //             width: 40,
//   //             height: 40,
//   //             decoration: BoxDecoration(
//   //               borderRadius: BorderRadius.circular(10),
//   //               color: Colors.white,
//   //             ),
//   //             child: Padding(
//   //               padding: const EdgeInsets.all(5),
//   //               child: Image.asset(
//   //                 'images/nike2_i.png',
//   //               ),
//   //             ),
//   //           ),
//   //           Container(
//   //             width: 40,
//   //             height: 40,
//   //             decoration: BoxDecoration(
//   //               borderRadius: BorderRadius.circular(10),
//   //               image: DecorationImage(
//   //                 image: AssetImage('images/p3.jpg'),
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }
import 'package:flutter/material.dart';
import 'package:project/view.dart';

import 'knit.dart';

// import 'knit.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'FAKIR APPARELS LTD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Menu> data = [];

  @override
  void initState() {
    for (var element in dataList) {
      data.add(Menu.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new Homei(),
          )),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: _buildDrawer(),
        ),
        body: const Center(
          child: Text(
            "Main Screen Contents...",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }

  Widget _buildDrawer() {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 0),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return _buildDrawerHeader(data[index]);
        }
        return _buildMenuList(data[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 1,
        thickness: 2,
      ),
    );
  }

  Widget _buildDrawerHeader(Menu headItem) {
    return DrawerHeader(
        margin: const EdgeInsets.only(bottom: 0),
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              headItem.icon,
              color: Colors.white,
              size: 60,
            ),
            const Spacer(),
            Text(
              headItem.title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ));
  }

  Widget _buildMenuList(Menu menuItem) {
    //build the expansion tile
    double lp = 0; //left padding
    double fontSize = 20;
    if (menuItem.level == 1) {
      lp = 20;
      fontSize = 16;
    }
    if (menuItem.level == 2) {
      lp = 30;
      fontSize = 14;
    }

    if (menuItem.children.isEmpty) {
      return Builder(builder: (context) {
        return InkWell(
          child: Padding(
            padding: EdgeInsets.only(left: lp),
            child: ListTile(
              leading: Icon(menuItem.icon),
              title: Text(
                menuItem.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          onTap: () {
            // Close the drawer
            Navigator.pop(context);

            //Then direct user to dashboard page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KNIT(),
              ),
            );
          },
        );
      });
    }

    return Padding(
      padding: EdgeInsets.only(left: lp),
      child: ExpansionTile(
        leading: Icon(menuItem.icon),
        title: Text(
          menuItem.title,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        children: menuItem.children.map(_buildMenuList).toList(),
      ),
    );
  }
}

//The Menu Model
class Menu {
  int level = 0;
  IconData icon = Icons.drive_file_rename_outline;
  String title = "";
  List<Menu> children = [];
  //default constructor
  Menu(this.level, this.icon, this.title, this.children);

  //one method for  Json data
  Menu.fromJson(Map<String, dynamic> json) {
    //level
    if (json["level"] != null) {
      level = json["level"];
    }
    //icon
    if (json["icon"] != null) {
      icon = json["icon"];
    }
    //title
    title = json['title'];
    //children
    if (json['children'] != null) {
      children.clear();
      //for each entry from json children add to the Node children
      json['children'].forEach((v) {
        children.add(Menu.fromJson(v));
      });
    }
  }
}

//menu data list
List dataList = [
  //menu data item
  {
    "level": 0,
    "icon": Icons.account_circle_rounded,
    "title": "Fakir Apparels",
  },

  //menu data item
  {
    "level": 0,
    "icon": Icons.verified_outlined,
    "title": "Hourly Garments Production",
    "children": [
      {
        "level": 1,
        "icon": Icons.lock,
        "title": "1",
        "children": [],
      },
    ]
  },
  {
    "level": 0,
    "icon": Icons.verified_outlined,
    "title": "Knitting Quality",
    "children": [
      {
        "level": 1,
        "icon": Icons.lock,
        "title": "1",
        "children": [],
      },
    ]
  },

  //menu data item

  //menu data item

  //menu data item

  //menu data item
  {"level": 0, "icon": Icons.favorite, "title": "Favorite", "children": []},
];

// class Dashboard extends StatelessWidget{
//   const Dashboard(this.menuItem, {Key? key}) : super(key: key);
//   // Declare a field that holds the User
//   final Menu menuItem;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Dashboard"),
//         ),
//         body: Center(
//           child:Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
//           child:  Text(
//             "Are you ready for  ${menuItem.title} ?",
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
//           ),
//           ),

//         )
//     );
//   }

// }

class KNIT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KNIT MODULE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyKnitPage(),
    );
  }
}
