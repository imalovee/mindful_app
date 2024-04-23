import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/Features/Profile/profile.dart';
class Container1 extends StatelessWidget {
  const Container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black
      ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,
        children: [
          Row(

            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return Profile();
                      }));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/p11.jpg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 8,),
              Text('Hi, Ronke',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              Icon(FontAwesomeIcons.hand,color: Colors.orange,)
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(FontAwesomeIcons.solidBell,
                color: Colors.white,),
              SizedBox(width: 8,),
              Icon(Icons.calendar_month,
                color: Colors.white,)
            ],
          ),

        ],
      )
    );
  }
}

