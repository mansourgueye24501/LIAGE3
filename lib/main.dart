import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 228, 228, 228),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int selectedIconIndex = -1;

  List<IconData> iconsList = [
    Icons.badge_rounded,
    Icons.pedal_bike_rounded,
    Icons.read_more_rounded,
    Icons.info_rounded,
    Icons.compost_rounded,
    Icons.shop_2_rounded,
    Icons.beach_access_rounded,
    Icons.shopping_cart_checkout_outlined,
    Icons.currency_exchange_sharp,
    Icons.assistant_direction_rounded,
  ];

  List<String> iconNames = [
    "Contacts",
    "Commandes",
    "En cours",
    "Info",
    "Client",
    "Promotion",
    "Produits",
    "Paniers",
    "Assistant",
    "Maison",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 228, 228),
      appBar: AppBar(
        elevation: 10,
        actions: const [
          Icon(Icons.shopping_bag, color: Colors.black, size: 30),
          SizedBox(width: 30),
          Icon(Icons.menu, color: Colors.black, size: 30),
          SizedBox(width: 30),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Explorer",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                bool isSelected = selectedIconIndex == index;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIconIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: isSelected ? 110 : 100,
                    width: isSelected ? 110 : 100,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.orange : Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          iconsList[index],
                          size: isSelected ? 50 : 40,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          iconNames[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Popins",
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 8);
              },
              itemCount: iconsList.length,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "120 Products",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 100),
              Text("Products"),
              Icon(Icons.expand_more),
              SizedBox(width: 15),
              Icon(Icons.dashboard),
              SizedBox(width: 15),
              Icon(Icons.rectangle, color: Colors.grey),
            ],
          ),
          SizedBox(height: 2),
          Stack(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/4.JPG"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Parfum Black Orchid",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("2.000 Francs"),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 470,
                left: 260,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsPage(
                          imagePath: "assets/images/4.JPG",
                          productName: "Parfum Black Orchid",
                          productPrice: "2.000 Francs",
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_right_alt,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Container(
            child: Column(
              children: [
                Image.asset("assets/images/5.JPG"),
                Text(
                  "Parfum JACCOB",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("2.750 Francs")
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            child: Column(
              children: [
                Image.asset("assets/images/1.JPG"),
                Text(
                  "Parfum Ameer Oud",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("1.500 Francs")
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            child: Column(
              children: [
                Image.asset("assets/images/2.JPG"),
                Text(
                  "Parfum Zam-Zam",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("2.750 Francs")
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
            child: Column(
              children: [
                Image.asset("assets/images/3.JPG"),
                Text(
                  "Parfum Oud Ghalib",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("2.750 Francs")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;

  const ProductDetailsPage({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les détails du produits'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          Text(
            productName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(productPrice),
          // Additional details or actions can be added here
        ],
      ),
    );
  }
}
