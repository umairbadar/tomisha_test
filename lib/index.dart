import 'package:flutter/material.dart';

import 'my_elevated_button.dart';

class Index extends StatefulWidget {
  const Index({super.key, required this.title});
  final String title;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int selected = 1;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 4.0,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFF319795),
                          Color(0xFF3182CE),
                        ]
                    )
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 65.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)
                      ),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xff319795)
                      ),
                    ),
                  ),

                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFEBF4FF),
                          Color(0xFFE6FFFA),
                        ]
                    )
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Deine Job\nwebsite',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 42.0
                      ),
                    ),
                    Image.asset(
                      'assets/images/1.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 2.0,),
                width: MediaQuery.of(context).size.width,
                height: 128.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      scrollController.animateTo(0, duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: MyElevatedButton(
                    width: double.infinity,
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Text('Kostenlos Registrieren', style: TextStyle(
                        color: Colors.white
                    ),),
                  ),

                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.grey),
                        primary: selected == 1 ? Color(0xff81E6D9) : Color(0xffFFFFFF),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              topLeft: Radius.circular(12.0)
                          ),
                        ),
                      ),
                      onPressed: () {

                        setState(() {
                          selected = 1;
                        });

                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Arbeitnehmer',
                          style: TextStyle(
                              color: selected == 1 ? Color(0xffFFFFFF) : Color(0xff319795)
                          ),
                        ),
                      ),

                    ),
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.grey),
                        primary: selected == 2 ? Color(0xff81E6D9) : Color(0xffFFFFFF),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0)
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Arbeitgeber',
                          style: TextStyle(
                              color: selected == 2 ? Color(0xffFFFFFF) : Color(0xff319795)
                          ),
                        ),
                      ),

                    ),
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.grey),
                        primary: selected == 3 ? Color(0xff81E6D9) : Color(0xffFFFFFF),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0)
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Temporärbüro',
                          style: TextStyle(
                              color: selected == 3 ? Color(0xffFFFFFF) : Color(0xff319795)
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
              Visibility(
                visible: selected == 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/Group_1.jpg'),
                ),
              ),
              Visibility(
                visible: selected == 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/Group_2.jpg'),
                ),
              ),
              Visibility(
                visible: selected == 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/Group_3.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}