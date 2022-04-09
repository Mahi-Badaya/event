import 'package:flutter/material.dart';
import 'package:gathrr/Components/carousel_slider.dart';
import 'package:gathrr/Components/popup.dart';
import 'package:gathrr/Components/rectangular_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
        context: context,
        builder: (context) => ExitDialog(),
      )??false; //if null
    }
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(icon: Icon(Icons.notifications),onPressed: (){},),
            IconButton(icon: Icon(Icons.line_weight), onPressed: (){},),
          ],
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.3,
                  color: Colors.green,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    RectangularContainer(),
                    Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Text('Upcoming events', style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),
                    Carousel(),
                    RectangularContainer(),
                    RectangularContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


