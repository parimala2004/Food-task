import 'package:flutter/material.dart';

class food extends StatelessWidget {
  const food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.green.shade300,
            child: Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 25),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(19),
                        child: Container(
                          height: 70,
                          width: 70,
                          color: Colors.white,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/images/avathar.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(height: 10),
                          Text("How Hungry are You", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Today?", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search Food Items",
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    height: 140,
                    width: 75,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/salad.jpg"),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Salad",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                        )

                      ],

                    ),
                  ),
                ),
                  SizedBox(width: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      height: 140,
                      width: 75,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/images/cofee.jpg"),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Cofee",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          )

                        ],

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      height: 140,
                      width: 75,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/images/cool.jpg"),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Cool Drinks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          )

                        ],

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      height: 140,
                      width: 75,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/images/desrt.jpg"),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Desert",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          )

                        ],

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      height: 140,
                      width: 75,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/images/fast food.jpg"),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Fast Food",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          )

                        ],

                      ),
                    ),
                  )

                ],


              )

          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Popular Foods",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 24),),
              ),
              SizedBox(width: 100,),
              Text("View All",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15),)
            ],

          ),


          SizedBox(height: 10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 230,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/pizza.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Pizza",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 14, color: Colors.red),
                          Text(
                            "Maritime Star",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.orange),
                          Text("4.5 (104)", style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text("\$20", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(width: 15),
                Container(
                  height: 230,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/burger.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Burger",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 14, color: Colors.red),
                          Text(
                            "Maritime Star",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.orange),
                          Text("4.7 (195)", style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text("\$18", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(width: 15),
                Container(
                  height: 230,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/fried.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Fried Rice",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 14, color: Colors.red),
                          Text(
                            "Maritime Star",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.orange),
                          Text("4.7 (195)", style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text("\$18", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 230,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/kfc.jpg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "KFC",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 14, color: Colors.red),
                          Text(
                            "Maritime Star",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.orange),
                          Text("4.7 (195)", style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Text("\$18", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}