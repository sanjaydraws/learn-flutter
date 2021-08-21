import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/Config.dart';
class RowData {
  int id;
  String imagePath, name;
 RowData({this.id, this.name, this.imagePath});

}
List<RowData> data = [
  RowData(id: 1,name:"Justin Bieber", imagePath: 'assets/justin.jpg' ),
  RowData(id: 2,name:"jack sparrow", imagePath: 'assets/jack.jpg' ),
  RowData(id: 3,name:"Billie ellish", imagePath: 'assets/billie.jpg' ),
  RowData(id: 4,name:"Seth Rogen", imagePath: 'assets/seth.jpg' ),
  RowData(id: 5,name:"Tom  cruise", imagePath: 'assets/tom.jpg' ),
  RowData(id: 6,name:"Leonardo Dicaprio", imagePath: 'assets/jack.png' ),


];
class Day1 extends StatefulWidget {
  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF2F2F33),
      body: Container(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: (){

              },
               child: Container(
                   decoration: BoxDecoration(
                     // color:Colors.red,
                   ),
                   width: Config.width ,
                   height: Config.height *0.1,
                   margin: EdgeInsets.only(top: Config.height*0.05),
                   // margin: EdgeInsets.only(top: 15.0, right: Config.width*0.01,left: Config.width*0.01,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.purple
                        ),
                        child: Hero(tag: "assets/jack.png", child: CircleAvatar(
                          // radius: 60.0,
                            backgroundImage:AssetImage("assets/justin.jpg")
                        ),),
                        height: Config.height,
                        width: Config.width*0.2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         Container(
                           decoration: BoxDecoration(
                             // color: Colors.green
                           ),
                          child: Text(
                               "Justin Bieber",
                               style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15.0,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold
                               )
                           ),
                           height: Config.height *0.03,
                           width: Config.width *0.59,
                         ),
                          Container(
                            decoration: BoxDecoration(
                                // color: Colors.blue
                            ),
                            child: Text(
                                "Welcome Back",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            height: Config.height * 0.07,
                            width: Config.width *0.56,
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                      ),
                    ],
                  )
                )
            ),
            Container(margin: EdgeInsets.only(top: Config.height*0.01),
              height: Config.height *0.84,
              padding: EdgeInsets.only(top: Config.height*0.03, right: Config.width*0.03, left: Config.width*0.03),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // color: Colors.red
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.blue
                        ),
                        child: Text(
                            "New Transaction",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: Config.width*0.09),
                    decoration: BoxDecoration(
                      // color: Colors.blue
                    ),
                    child: Text(
                        "Form",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.blueAccent
                      ),
                      height: Config.height*0.3,
                      width: Config.width*0.8,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 10.0,
                        child: Column(

                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.38,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                    ),
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context,index){
                          return _buildUserItem(data,index);
                        }
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
   Widget _buildUserItem(List<RowData> data, int index){
    return Container(
      child:InkWell(
          onTap: (){

          },
          child: Container(
              decoration: BoxDecoration(
                // color:Colors.red,
              ),
              width: Config.width ,
              height: Config.height *0.1,
              margin: EdgeInsets.only(top: Config.height*0.02),
              // margin: EdgeInsets.only(top: 15.0, right: Config.width*0.01,left: Config.width*0.01,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.purple
                    ),
                    child: Hero(tag: "assets/plate1.png", child: CircleAvatar(
                      // radius: 60.0,
                        backgroundImage:AssetImage(data[index].imagePath)
                    ),),
                    height: Config.height,
                    width: Config.width*0.2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.blueAccent
                        ),
                        child: Text(
                            data[index].name,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        height: Config.height *0.03,
                        width: Config.width *0.59,
                      ),
                    ],
                  ),
                ],
              )
          )
      ),
    );
   }
}
