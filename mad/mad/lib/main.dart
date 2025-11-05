// import 'package:flutter/material.dart';
// import 'screens/dashboard.dart';
// import 'screens/login.dart';
// import 'screens/signup.dart';
// import 'screens/profile_page.dart';
// import 'screens/edit_profile_page.dart';
// void main() {
//   runApp(GreenKyperApp());
// }

// class GreenKyperApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GreenKyper',
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/dashboard',
//       routes: {
//         '/dashboard': (context) => DashboardScreen(),
//         '/login': (context) => LoginScreen(),
//         '/signup': (context) => SignupScreen(),
//       },
//     );
//   }
// }

// // Global variables (temporary in-memory storage)
// String? registeredName;
// String? registeredEmail;
// String? registeredPassword;
// bool isLoggedIn = false;

// lib/main.dart
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MAD Midterm Demo',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Home')),
//         body: Center(child: Text('Hello Flutter')),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main()=> runApp(ThemeDemoApp());
// class ThemeDemoApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext ctx){
//     return MaterialApp(
//       title: "Theme change",
//       theme: ThemeData(
//         primarySwatch:Colors.indigo,
//         brightness:Brightness.light,
//       ),
//       darkTheme: ThemeData(
//         primarySwatch: Colors.red,
//         brightness: Brightness.dark,
//       ),
//       home:themehome(), 
//     );
//   }
// }
// class themehome extends StatelessWidget{
//   @override
//   Widget build(BuildContext ctx){
//     return Scaffold(appBar: AppBar(title: Text('theme demo')) ,
//     body: Center(child: ElevatedButton(onPressed: (){}, child: Text("click me")),));
//   }
// }




///////// simple//////
// import 'package:flutter/material.dart';

// void main()=> runApp(myApp());
// class myApp extends StatefulWidget{
//   @override
//   State<myApp> createState() => _MyAppState();
// }
// class _MyAppState extends State<myApp>{
//   bool isdark=false;
// void toggletheme(){
//     setState((){
//       isdark=!isdark;

//     });
// }
// @override
// Widget build(BuildContext context){
// return MaterialApp(
//     title: "Demo theme",
//     theme:ThemeData(
//       primarySwatch: Colors.indigo,
//       brightness:Brightness.light,
//       ),
//     darkTheme: ThemeData(
//       brightness: Brightness.dark,
//       ),
//     themeMode: isdark ? ThemeMode.dark : ThemeMode.light,
//     home:Scaffold(
//       appBar: AppBar(title: Text("Theme demo here")),
//       body: Center(
//         child: ElevatedButton(onPressed: toggletheme,child: Text("Click me"),)
//       )
//     )
//     );
// }
// }


////////// another simple//////
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: WidgetsDemo(),
//     );
//   }
// }

// class WidgetsDemo extends StatefulWidget {
//   @override
//   State<WidgetsDemo> createState() => _WidgetsDemoState();
// }

// class _WidgetsDemoState extends State<WidgetsDemo> {
//   int counter = 0;
//   String name = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Widgets Demo'),
//         backgroundColor: Colors.purple,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 1. TEXT WIDGET
//             Text(
//               'Hello Flutter!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),

//             // 2. CONTAINER WIDGET
//             Container(
//               width: double.infinity,
//               height: 80,
//               color: Colors.blue,
//               padding: EdgeInsets.all(16),
//               child: Center(
//                 child: Text(
//                   'This is a Container',
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // 3. ROW WIDGET
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.home, size: 40, color: Colors.blue),
//                 Icon(Icons.favorite, size: 40, color: Colors.red),
//                 Icon(Icons.star, size: 40, color: Colors.orange),
//               ],
//             ),
//             SizedBox(height: 20),

//             // 4. BUTTON WIDGET
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   counter++;
//                 });
//               },
//               child: Text('Click Me! Count: $counter'),
//             ),
//             SizedBox(height: 20),

//             // 5. TEXT FIELD WIDGET
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Enter your name',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.person),
//               ),
//               onChanged: (text) {
//                 setState(() {
//                   name = text;
//                 });
//               },
//             ),
//             SizedBox(height: 10),
//             Text('You typed: $name'),
//             SizedBox(height: 20),

//             // 6. CARD WIDGET
//             Card(
//               elevation: 4,
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Card Title',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 8),
//                     Text('This is a card widget with some content inside.'),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.purple,
//       ),
//     );
//   }
// }

//////// anotehr simple2////// 


import 'package:flutter/material.dart';

void main() => runApp(FoodApp());

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodScreen(),
    );
  }
}

class FoodScreen extends StatefulWidget {
  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  String searchText = '';
  int cartItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SCAFFOLD WIDGET - Main structure
      // APPBAR WIDGET - Top bar
      appBar: AppBar(
        title: Text('Food Delivery'),
        backgroundColor: Colors.orange,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              if (cartItems > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$cartItems',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          // COLUMN WIDGET - Vertical layout
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TEXT WIDGET - Welcome message
            Text(
              'Welcome to FoodApp!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,  
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Order your favorite food',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),

            // TEXTFIELD WIDGET - Search input
            TextField(
              decoration: InputDecoration(
                labelText: 'Search for food',
                hintText: 'Pizza, Burger, Pasta...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (text) {
                setState(() {
                  searchText = text;
                });
              },
            ),
            SizedBox(height: 10),
            Text('You searched: $searchText'),
            SizedBox(height: 20),

            // TEXT WIDGET - Section title
            Text(
              'Popular Foods',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            // CARD WIDGET 1 - Pizza
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    // STACK WIDGET - Image with badge
                    Stack(
                      children: [
                        // CONTAINER WIDGET - Image placeholder
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // IMAGE WIDGET (using icon as placeholder)
                              Icon(
                                Icons.local_pizza,
                                size: 80,
                                color: Colors.orange,
                              ),
                              SizedBox(height: 8),
                              Text(
                                '🍕 Pizza Image',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        // Badge on top
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'HOT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    // ROW WIDGET - Title and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cheese Pizza',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Delicious cheesy pizza',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          '\$12.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    // ELEVATED BUTTON WIDGET - Add to cart
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cartItems++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(double.infinity, 45),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            // CARD WIDGET 2 - Burger
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.brown[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lunch_dining,
                                size: 80,
                                color: Colors.brown,
                              ),
                              SizedBox(height: 8),
                              Text(
                                '🍔 Burger Image',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'NEW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beef Burger',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Juicy beef burger',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          '\$9.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cartItems++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(double.infinity, 45),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            // CARD WIDGET 3 - Pasta
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.ramen_dining,
                                size: 80,
                                color: Colors.orange[800],
                              ),
                              SizedBox(height: 8),
                              Text(
                                '🍝 Pasta Image',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Italian Pasta',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Creamy pasta dish',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          '\$11.49',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cartItems++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(double.infinity, 45),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            // Summary text
            Center(
              child: Text(
                'Total items in cart: $cartItems',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
