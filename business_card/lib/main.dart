import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              Text(
                'Himanshu Dhillon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Software Developer',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceCodePro-Regular',
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  thickness: 2,
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                //WAY 1
                // child: Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Row(
                //     children: [
                //       Row(
                //         children: [
                //           Icon(
                //             color: Colors.teal,
                //             Icons.phone,
                //             size: 25,
                //           ),
                //           SizedBox(width: 20),
                //           Text(
                //             '+91 6375159414',
                //             style: TextStyle(
                //               fontFamily: 'SourceCodePro-Regular',
                //               fontSize: 15,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                child: ListTile(
                  leading: Icon(
                    color: Colors.teal,
                    Icons.phone,
                    size: 25,
                  ),
                  title: Text(
                    '+91 6375159414',
                    style: TextStyle(
                      fontFamily: 'SourceCodePro-Regular',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                //METHOD 1
                // child: Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Row(
                //     children: [
                //       Icon(
                //         color: Colors.teal,
                //         Icons.email,
                //         size: 25,
                //       ),
                //       SizedBox(width: 20),
                //       Text(
                //         'himanshu.dhillon99@gmail.com',
                //         style: TextStyle(
                //           fontFamily: 'SourceCodePro-Regular',
                //           fontSize: 15,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                child: ListTile(
                  leading: Icon(
                    color: Colors.teal,
                    Icons.email,
                    size: 25,
                  ),
                  title: Text(
                    'himanshu.dhillon99@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceCodePro-Regular',
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
