import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gathrr/Components/rectangular_container.dart';
import 'package:gathrr/Screens/event_details.dart';

class Carousel extends StatefulWidget {

  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int activePage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: 5,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, index) {
              return RectangularContainer(
                cardChild: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EventDetails()));
                    },
                      child:Text('Book Now'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(5,activePage))
      ],
    );
  }
}
int imagesLength = 5;

List<Widget> indicators(imagesLength,currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}