import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Profile'),
      ),
      body:OrientationBuilder(
        builder:(context, orientation) {
          return Center(
            child:orientation == Orientation.portrait
                ? PortraitLayout()
                : LandscapeLayout(),
          );
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            height:MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child:FractionallySizedBox(
              widthFactor:.9,
              heightFactor:.9,
              child:Container(
                decoration:BoxDecoration(
                  border:Border.all(width: 2, color: Colors.white),
                  shape:BoxShape.circle,
                  color:Colors.green, // Change the color here
                  image:DecorationImage(
                    image:NetworkImage(
                      'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGQxMDYtMDY2Yl8xLmpwZw.jpg',
                    ),
                    fit:BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child:Padding(
            padding:const EdgeInsets.all(8.0),
            child:Column(
              children: [
                Text(
                  'Hungry Lion',
                  style:TextStyle(fontSize: 28, fontWeight:FontWeight.bold),
                ),
                SizedBox(
                  height:10,
                ),
                Text(
                  'The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body.',
                  style: TextStyle(fontWeight:FontWeight.normal, fontSize: 20),
                ),
                SizedBox(
                  height:10,
                ),
                Expanded(
                  child:GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:3,
                      mainAxisSpacing:5,
                      crossAxisSpacing:5,
                    ),
                    itemBuilder: (context, index) => FractionallySizedBox(
                      heightFactor: 1,
                      widthFactor: 1,
                      child:Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration:BoxDecoration(
                          color:Colors.cyanAccent, // Change the color here
                          image:DecorationImage(
                            image:NetworkImage(
                              'https://images.rawpixel.com/image_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2Uvd2Vic2l0ZS8yMDIyLTA0L2xyL3B4OTE3NDYyLWltYWdlLWt3eW8ydmxrLmpwZw.jpg',
                            ),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    itemCount:10,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Flexible(
          child:Container(
            height:MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child:FractionallySizedBox(

              widthFactor:.9,
              heightFactor:.9,
              child:Container(
                decoration:BoxDecoration(
                  border:Border.all(width: 2, color:Colors.white),
                  shape:BoxShape.circle,
                  color:Colors.green, // Change the color here
                  image:DecorationImage(
                    image:NetworkImage(
                      'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGQxMDYtMDY2Yl8xLmpwZw.jpg',
                    ),
                    fit:BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text(
                  'Hungry Lion',
                  style:TextStyle(fontSize:28,fontWeight:FontWeight.bold),
                ),
                Text(
                  'The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body;.',
                  style:TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
                SizedBox(
                  height:20,
                ),
                Expanded(
                  child:GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:3,
                      mainAxisSpacing:5,
                      crossAxisSpacing:5,
                    ),
                    itemBuilder: (context, index) => FractionallySizedBox(
                      heightFactor: 1,
                      widthFactor: 1,
                      child:Container(
                        decoration:BoxDecoration(
                          color:Colors.cyanAccent, // Change the color here
                          image:DecorationImage(
                            image:NetworkImage(
                              'https://images.rawpixel.com/image_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2Uvd2Vic2l0ZS8yMDIyLTA0L2xyL3B4OTE3NDYyLWltYWdlLWt3eW8ydmxrLmpwZw.jpg',
                            ),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    itemCount:10,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
