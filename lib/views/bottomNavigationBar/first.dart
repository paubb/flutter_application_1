import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class FirstPage extends StatefulWidget {
  FirstPage() : super();

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2018/11/29/20/01/nature-3846403_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/03/18/06/06/street-4942809_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/06/04/19/14/barcelona-2371946_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi Júlia!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.search,
                size: 28.0,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "YOU ARE IN ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "BARCELONA",
                style: TextStyle(
                    color: Palette.coral, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      print("HOTELS tapped");
                    },
                    icon: Icon(
                      Icons.king_bed,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("HOTELS"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      print("FLIGHTS tapped");
                    },
                    icon: Icon(
                      Icons.flight,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("FLIGHTS"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      print("FOOD tapped");
                    },
                    icon: Icon(
                      Icons.food_bank,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("FOOD"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      print("EVENTS tapped");
                    },
                    icon: Icon(
                      Icons.calendar_today,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("EVENTS"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Destination",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "SEE ALL",
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              // padding on top set to 0 to remove automatic inital pad
              padding: EdgeInsets.only(top: 0.0),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: imageList[index],
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MALAWI",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Chip(
                                  backgroundColor: Colors.transparent,
                                  deleteIcon: Icon(
                                    Icons.star_border,
                                    size: 15,
                                  ),
                                  onDeleted: () {
                                    setState(() {
                                      //nothing
                                    });
                                  },
                                  label: Text(
                                    "4.8",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                /*Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );*/
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
              },
            ),
          ),
        ],
      ),
    );
  }
}
