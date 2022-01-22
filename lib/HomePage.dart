import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://th.bing.com/th/id/OIP.sai2ObyFIip8dObZmSgEVQHaFj?pid=ImgDet&rs=1"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("What you  would like to find ?",textAlign:TextAlign.center ,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height:30 ,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Icons.search, color: Colors.grey,),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                          hintText: "Search for cities places ...",
                        ),
                      ),
                    ),
                    SizedBox(height:30 ,),
                  ],
                ),
              ),

            ),
            SizedBox(height:30 ,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Destination",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  SizedBox(height:20 ,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeIcon(image: "https://th.bing.com/th/id/OIP.EDRviCJufIiS6VAzulQwwAHaD-?pid=ImgDet&rs=1",title: "Italy"),
                        makeIcon(image: "https://th.bing.com/th/id/R.3532d50c6ed4cb1edf6f5307ec36b6a5?rik=Q6VPK8MqjfxFtw&pid=ImgRaw&r=0",title: "France"),
                        makeIcon(image: "https://www.wesaltravel.id/wp-content/uploads/2019/07/wisata-turki.jpg",title: "Turki"),
                        makeIcon(image: "https://th.bing.com/th/id/R.ca28444dd5ff426dea834dc33872804f?rik=1ren7oGNIVMVJQ&riu=http%3a%2f%2ftravel.home.sndimg.com%2fcontent%2fdam%2fimages%2ftravel%2ffullset%2f2014%2f12%2f12%2fhub-canada.jpg.rend.hgtvcom.616.462.suffix%2f1491584605696.jpeg&ehk=yOIuz4KtREAfwmmGgE3MjHLcsvwOUuBxRE%2bfKjmzpOE%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",title: "Canada"),
                      makeIcon(image: "https://www.lifeviaggivacanze.com/wp-content/uploads/2015/12/maldive-5_-1024x768-1024x768.jpg",title: "Maldive"),

                ],
                    ),
                  ),
                  SizedBox(height:30 ,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        AspectRatio(
                            aspectRatio: 1.5/1,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.withOpacity(.2),
                              ),
                              child: Icon(Icons.hotel,color: Colors.blue,),
                            ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.5/1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red.withOpacity(.2),
                            ),
                            child: Icon(Icons.flight,color: Colors.redAccent,),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.5/1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.withOpacity(.2),
                            ),
                            child: Icon(Icons.event,color: Colors.green,),
                          ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height:20 ,),
                  Text("Best Hotels",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  SizedBox(height:20 ,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeIcon(image: "https://th.bing.com/th/id/R.127eb9b88ae5189ad53bc015b8f8306e?rik=wdGKAqbqsJTUCA&pid=ImgRaw&r=0",title: "Italy"),
                        makeIcon(image: "https://www.fivestaralliance.com/files/fivestaralliance.com/styles/juicebox_large/public/field/image/nodes/2017/29359/Hotel-Le-Cep_exterior_fsa-g.jpg?itok=PP5Tid2M",title: "France"),
                        makeIcon(image: "https://th.bing.com/th/id/R.dffbcb6ed483a34c0182b65c5f31b029?rik=48%2bkZg1ZDaYeyQ&riu=http%3a%2f%2fwww.mresco.com%2fwp-content%2fuploads%2f2015%2f06%2fhotel-turkey.jpg&ehk=JS1rzXSkLWgkcnEvILZSLAspw3jrQqC5uNxH3idB0zs%3d&risl=&pid=ImgRaw&r=0",title: "Turki"),
                        makeIcon(image: "https://th.bing.com/th/id/R.0e6f9f36cf41cd383ba29567e7cc0c3c?rik=wam0cY%2bfR8mE%2bw&riu=http%3a%2f%2fcdn-image.travelandleisure.com%2fsites%2fdefault%2ffiles%2fstyles%2f1600x1000%2fpublic%2f1494879721%2f7-the-ritz-carlton-montreal-canada-WBCACITYHTL0519.jpg%3fitok%3drqZxiZEQ&ehk=uZMX%2fyduowOPhhfuBcByWAfu1g6fiDx3S4lnRQhQwOg%3d&risl=&pid=ImgRaw&r=0",title: "Canada"),
                        makeIcon(image: "https://www.travelplusstyle.com/wp-content/gallery/maalifushi-by-como-maldives/86109934-h1-swimming_pool_evening.jpg",title: "Maldive"),


                      ],
                    ),


                  ),
                  SizedBox(height:80 ,),



                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
  Widget makeIcon({image, title}){
    return AspectRatio(
        aspectRatio: 1 / 1,
      child:  Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),

        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),

          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
          ),

        ) ,
      ),
    );
  }
}
