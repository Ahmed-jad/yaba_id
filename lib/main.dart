import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:yabaCard(),
  ));

class yabaCard extends StatefulWidget {
  @override
  _yabaCardState createState() => _yabaCardState();
}

class _yabaCardState extends State<yabaCard> {
  int yabaId=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Yaba Cards'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            yabaId +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
           padding: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color:Colors.grey[500],
            ),
            Text(
              'NAME',
               style: TextStyle(
                 color: Colors.grey,
                 letterSpacing: 2.0,
               ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'AHMED',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),

            Text(
              'Curent Yaba ID',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              '$yabaId',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text('ahmed.info@yaba.com',
                   style: TextStyle(
                     color: Colors.grey[400],
                     fontSize: 18.0,
                     letterSpacing: 1.5,

                   ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}


