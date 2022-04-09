import 'package:flutter/material.dart';
import 'package:gathrr/Screens/event_details.dart';

var url = 'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/2017/02/21105943/speakers-for-your-event.jpg';

String randomText = 'Lorem ipsum dolor sit amet. Eos distinctio quaerat qui quia quia et similique facilis non voluptate reiciendis. Eos unde sequi nam sint consequatur eos libero recusandae rem dolor asperiores et magnam necessitatibus expedita architecto.Et modi pariatur qui autem nobis 33 dolor repellendus. In fugit nobis At labore delectus ut maxime rerum est omnis autem qui molestias dicta nam commodi ipsa aut doloribus voluptas. Qui odit galisum sed reiciendis magni id corrupti necessitatibus qui corrupti harum et eveniet corrupti!Ad consectetur necessitatibus et quia commodi in illum voluptatem sed consequatur fugit non deserunt voluptate. Rem repellendus eaque est provident autem nam iure. Ex nesciunt numquam a quasi autem hic esse ipsam est quis molestiae in dolorem eligendi sed fuga adipisci qui ipsa omnis. Repellat officiis ex repudiandae voluptatum qui mollitia ullam.';

Widget description (String text) {
 final lines = isShowmore ? null :4;
 return Text(
     text,
  maxLines: lines,
   overflow: isShowmore ? TextOverflow.visible :TextOverflow.ellipsis,
 );
}