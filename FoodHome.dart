import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class FoodHome extends StatefulWidget {
  const FoodHome({super.key});

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> with SingleTickerProviderStateMixin {
  int _currentIndex =0;
  bool isChecked = false;
  String _gender = 'Male';
  bool switchValue = false;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      initialEntryMode:DatePickerEntryMode.calendarOnly,
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("FoodApp"),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorAnimation: TabIndicatorAnimation.elastic,
          controller: _tabController,
          tabs: [
            Tab(text: "Home"),
            Tab(text: "Orders"),
            Tab(text: "Favourites"),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children:[
            Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green.shade300,
                  child: Column(

                    children: [

                      SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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

                    child: Row(
                      children: [Container(
                        height: 100,
                        width: 75,
                        child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: -50,
                                child: ClipRRect(
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
                              ),
                            ] ),
                      ),

                        SizedBox(width: 20),
                        Container(
                          height: 100,
                          width: 75,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: -50,
                                child: ClipRRect(
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
                                          child: Text(
                                            "Cofee",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 100,
                          width: 75,
                          child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -50,
                                  child: ClipRRect(
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
                                ),
                              ]),
                        ),


                        SizedBox(width: 20,),
                        Container(
                          height: 100,
                          width: 75,
                          child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -50,
                                  child: ClipRRect(
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
                                  ),
                                ),
                              ]),),

                      ],


                    )

                ),
                SizedBox(height: 10,),
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
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("This is already finished."),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );

                          Future.delayed(Duration(milliseconds: 500), () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Bottom Sheet",
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("You tapped on Pizza. Would you like to continue?"),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Alert"),
                                                content: Text("This item is out of stock."),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () => Navigator.pop(context),
                                                    child: Text("OK"),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Text("Alert Dialog"),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 220,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/pizza.jpg',
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Pizza",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$15",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("This is already finished."),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );

                          Future.delayed(Duration(milliseconds: 500), () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Bottom Sheet",
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("You tapped on Pizza. Would you like to continue?"),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Alert"),
                                                content: Text("This item is out of stock."),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () => Navigator.pop(context),
                                                    child: Text("OK"),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Text("Alert Dialog"),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 220,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/burger.jpg',
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Burger",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$15",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ),


                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("This is already finished."),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );

                          Future.delayed(Duration(milliseconds: 500), () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Bottom Sheet",
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("You tapped on KFC. Would you like to continue?"),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context); //
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Alert"),
                                                content: Text("This item is out of stock."),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () => Navigator.pop(context),
                                                    child: Text("OK"),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Text("Alert Dialog"),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 220,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/kfc.jpg',
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "KFC",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$15",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("This is already finished."),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );

                          Future.delayed(Duration(milliseconds: 500), () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Bottom Sheet",
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text("You tapped on Fried Rice. Would you like to continue?"),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Alert"),
                                                content: Text("This item is out of stock."),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () => Navigator.pop(context),
                                                    child: Text("OK"),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Text("Alert Dialog"),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 220,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/fried.jpg',
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "FriedRice",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$15",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

              ],

            ),
            Card(
              color: Colors.greenAccent.shade100,
              margin: EdgeInsets.all(16),
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(

                  children: [

                    // Pizza Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/pizza.jpg',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),

                    Text(
                      "Pizza Order Details",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),

                    // Gender Selection
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Select Gender:", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: "Male",
                          groupValue: _gender,
                          onChanged: (val) {
                            setState(() {
                              _gender = val!;
                            });
                          },
                        ),
                        Text("Male"),
                        Radio<String>(
                          value: "Female",
                          groupValue: _gender,
                          onChanged: (val) {
                            setState(() {
                              _gender = val!;
                            });
                          },
                        ),
                        Text("Female"),
                      ],
                    ),

                    // Date Picker
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.calendar_today),
                      title: Text(selectedDate == null
                          ? "Pick order date"
                          : DateFormat('yyyy-MM-dd').format(selectedDate!)),
                      onTap: _pickDate,
                    ),

                    // Time Picker
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.access_time),
                      title: Text(selectedTime == null
                          ? "Pick order time"
                          : selectedTime!.format(context)),
                      onTap: _pickTime,
                    ),

                    // Terms Switch
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text("Automatic Save"),
                      value: switchValue ,
                      onChanged: (val) {
                        setState(() {
                          switchValue  = val;
                        });
                      },
                    ),
                    Row(
                      children: [
                        Checkbox(value: isChecked,
                            onChanged:(changed){
                              setState(() {
                                isChecked=changed!;
                              });
                            }
                        ),
                        Text("I read the all terms and conditions")
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: isChecked,
                            onChanged:(changed){
                              setState(() {
                                isChecked=changed!;
                              });
                            }
                        ),
                        Text("I accept all terms and conditions")
                      ],
                    )
                  ],
                ),
              ),

            ),
            Center(child: Text("Put your favourites food here",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 12),)),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),

        ],
      ),
    );
  }
}
