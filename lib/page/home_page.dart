import 'package:bibliotheka/data/model_data_closet.dart';
import 'package:bibliotheka/data/model_data_desk.dart';
import 'package:flutter/material.dart';
//import 'package:bibliotheka/core/color.dart';
//import 'package:bibliotheka/core/space.dart';
//import 'package:bibliotheka/core/text_style.dart';
import 'package:bibliotheka/data/model_data.dart';
//import 'package:bibliotheka/widgets/Custom_app_bar.dart';
import 'package:bibliotheka/widgets/item_card.dart';
//import 'package:bibliotheka/widgets/tabbar_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: white,
    //   appBar: AppBar(
    //   backgroundColor: const Color.fromARGB(50, 255, 0, 0),
    //   ),
      // drawer: Drawer(
      //   child: ListView(
      //     // Remove padding
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: Text('Oflutter.com'),
      //         accountEmail: Text('example@gmail.com'),
      //         currentAccountPicture: CircleAvatar(
      //           child: ClipOval(
      //             child: Image(
      //               image: AssetImage('assets/images/01.png')),
      //           ),
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //           image: DecorationImage(
      //               fit: BoxFit.fill,
      //               image: AssetImage('assets/images/Model1.png'),

      //               // image: NetworkImage(
      //               //     'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
      //                   ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.favorite),
      //         title: Text('Favorites'),
      //         onTap: () => null,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.person),
      //         title: Text('Friends'),
      //         onTap: () => null,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.share),
      //         title: Text('Share'),
      //         onTap: () => null,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.notifications),
      //         title: Text('Request'),
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //         onTap: () => null,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.description),
      //         title: Text('Policies'),
      //         onTap: () => null,
      //       ),
      //       Divider(),
      //       ListTile(
      //         title: Text('Exit'),
      //         leading: Icon(Icons.exit_to_app),
      //         onTap: () => null,
      //       ),
      //     ],
      //   ),
      // ),

    //   body: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         //CustomAppBar(),
    //         Text(
    //           'Mueblez \ Estilo Unico',
    //           style: heading,
    //         ),
    //         SpaceVH(height: 10),
    //         Text(
    //           'We have wide rang of Furniture',
    //           style: subHeading,
    //         ),
    //         SpaceVH(height: 20),
    //         Container(
    //           height: 70.0,
    //           child: TabBarButton(),
    //         ),
            // Expanded(
              // child: DefaultTabController(
             return DefaultTabController(

                length: 4,
                child: Scaffold(
                  appBar: AppBar(
                    // shadowColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    title: const Text('Muebles Unicos'),
                    //foregroundColor: Colors.blue,
                    bottom: const TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.red,
                      labelColor: Colors.yellow,
                      tabs: [
                        Tab(
                          
                          icon: Icon(Icons.table_bar_outlined),
                          child: Text('Mesas')),
                        Tab(
                          icon: Icon(Icons.table_restaurant),
                          child: Text('Escritorio')),
                        Tab(
                          icon: Icon(Icons.table_chart_outlined),
                          child: Text('Closets')),
                        Tab(
                          icon: Icon(Icons.tab_unselected_sharp),
                          child: Text('Panel')),
                              ]
                        ),
                    ),
                    drawer: Drawer(
                              child: ListView(
                                // Remove padding
                                padding: EdgeInsets.zero,
                                children: [
                                  const UserAccountsDrawerHeader(
                                    accountName: Text('Oflutter.com'),
                                    accountEmail: Text('example@gmail.com'),
                                    currentAccountPicture: CircleAvatar(
                                      child: ClipOval(
                                        child: Image(
                                          image: AssetImage('assets/images/01.png')),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage('assets/images/Model1.png'),

                                          // image: NetworkImage(
                                          //     'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
                                              ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.favorite),
                                    title: const Text('Favorites'),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.person),
                                    title: const Text('Friends'),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.share),
                                    title: const Text('Share'),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.notifications),
                                    title: Text('Request'),
                                  ),
                                  const Divider(),
                                  ListTile(
                                    leading: const Icon(Icons.settings),
                                    title: const Text('Settings'),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.description),
                                    title: const Text('Policies'),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                  const Divider(),
                                  ListTile(
                                    title: const Text('Exit'),
                                    leading: const Icon(Icons.exit_to_app),
                                    // ignore: avoid_returning_null_for_void
                                    onTap: () => null,
                                  ),
                                ],
                              ),
                            ),

                    body: TabBarView(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: ListView.builder(
                  padding: const EdgeInsets.all(1.0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: models.length,
                  itemBuilder: (builder, index) {
                    final model = models[index];
                    return ItemCard(model: model);  
                    }
                  ),   
                        ),
                        Container(
                          color: Colors.transparent,
                          child: ListView.builder(
                  padding: const EdgeInsets.all(1.0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: models_desk.length,
                  itemBuilder: (builder, index) {
                    final modelDesk = models_desk[index];
                    return ItemCard(model: modelDesk);  
                    }
                  ),   
                        ),
                        Container(
                          color: Colors.transparent,
                          child: ListView.builder(
                  padding: const EdgeInsets.all(1.0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: models_closet.length,
                  itemBuilder: (builder, index) {
                    final model = models_closet[index];
                    return ItemCard(model: model);  
                    }
                  ),   
                        ),
                        Container(
                          color: Colors.transparent,
                          child: ListView.builder(
                  padding: const EdgeInsets.all(1.0),
                  physics: const BouncingScrollPhysics(),
                  itemCount: models.length,
                  itemBuilder: (builder, index) {
                    final model = models[index];
                    return ItemCard(model: model);  
                    }
                  ),                          
                        ),
                      ]), 
                      ),
                        // )
                // )
            
            // Expanded(
              // child: ListView.builder(
              //     padding: EdgeInsets.all(1.0),
              //     physics: const BouncingScrollPhysics(),
              //     itemCount: models.length,
              //     itemBuilder: (builder, index) {
              //       final model = models[index];
              //       return ItemCard(model: model);  
              //       }
              //     ),
            // ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0.0,
      //   child: Container(
      //     height: 50.0,
      //     color: black,
      //     child: Stack(
      //       children: [
      //         Align(
      //           alignment: Alignment.topCenter,
      //           child: Container(
      //             height: 40.0,
      //             decoration: BoxDecoration(
      //               color: white,
      //               borderRadius: BorderRadius.only(
      //                 bottomLeft: Radius.circular(0.0),
      //                 bottomRight: Radius.circular(0.0),
      //               ),
      //             ),
      //           ),
      //         ),
      //         // Align(
      //         //   alignment: Alignment.bottomCenter,
      //         //   child: Row(
      //         //     mainAxisAlignment: MainAxisAlignment.center,
      //         //     children: [
      //         //       bottomNavButton(
      //         //         onPress: () {},
      //         //         icon: Icons.home_outlined,
      //         //       ),
      //         //       SpaceVH(width: 60),
      //         //       bottomNavButton(
      //         //         onPress: () {},
      //         //         icon: Icons.chat_outlined,
      //         //       ),
      //         //       SpaceVH(width: 60),
      //         //       bottomNavButton(
      //         //         onPress: () {},
      //         //         icon: Icons.person_outline_outlined,
      //         //       ),
      //         //     ],
      //         //   ),
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  // IconButton bottomNavButton(
  //     {required Function() onPress, required IconData icon}) {
  //   return IconButton(
  //     onPressed: onPress,
  //     icon: Icon(
  //       icon,
  //       size: 40,
  //       color: white,
  //     ),
  //   );
  // }
}
