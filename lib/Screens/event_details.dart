import 'package:flutter/material.dart';
import 'package:gathrr/Components/constants.dart';
import '../Components/custom_icon.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}


class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.qr_code_scanner_rounded),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.white),
                    ),
                    SizedBox(height: 7.0,),
                    Text(
                      randomText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                     Text(
                      'Lorem Ipsum',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,),),
                     Text('10:30 am - 1:15 pm | COEP | Pune',style: TextStyle(color: Colors.grey)),
                   ],
                 ),
                 const CustomIcon(
                   circularIcon: Icons.share_outlined,
                   colour: Colors.green,
                 ),
                 const CustomIcon(
                   circularIcon: Icons.whatsapp_outlined,
                   colour: Colors.blue,
                 ),
               ],
             ),
          Text(randomText)
        ],
      ),
    );
  }
}


