import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) => LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.black, Colors.black45]).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dennis.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/dennis.jpg'),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Center(
                  child: Text(
                    'Dennis Akagha',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'CLICK to view objective',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),

              //
            ],
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
            color: Colors.grey,
            height: 170,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Text(
                    'I am a highly motivated and creative flutter developer seeking to get a position in a fast-paced organization where technical skills and creative thinking are encouraged.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
                // color: kWhite,
                size: 50.0,
              ),
            ));
      });
}
