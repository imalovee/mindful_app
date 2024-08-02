import 'package:flutter/material.dart';
import 'package:mindful_app/Features/HomePage/Widgets/available_therapist_section.dart';

import '../../../gen/assets.gen.dart';
import '../widgets/therapist_widget.dart';

class Therapist extends StatelessWidget {
  const Therapist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Find Your Therapist'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AvailableTherapistsSection(),
          Text('Available Therapists',
            style: TextStyle(
                color: Colors.black,
               // fontWeight: FontWeight.bold,
                fontSize: 16
            ),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                TherapistWidget(
                  title: "Dr. Albert Sam",
                  subTitle: "Counsellor",
                  image: CircleAvatar(
                    backgroundImage: AssetImage('assets/download 4.jpg'),
                  )
                 ),
              TherapistWidget(
                title: "Dr. Mary",
                subTitle: "Psychiatrist",
                image: CircleAvatar(
                  backgroundImage: AssetImage('assets/download 5.jpg'),
                )
              ),
            ],
          ),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TherapistWidget(
                  title: "Dr. Samantha",
                  subTitle: "Psychiatrist",
                  image: CircleAvatar(
                    backgroundImage: AssetImage('assets/download 3.jpg'),
                  )
              ),
              TherapistWidget(
                title: "Dr. Matt Peters",
                subTitle: "Psychologist",
                image: CircleAvatar(
                  backgroundImage: AssetImage('assets/download 1.jpg'),
                )
              ),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TherapistWidget(
                title: "Dr. Patricia",
                subTitle: "Counsellor",
                image: CircleAvatar(
                  backgroundImage: AssetImage('assets/download 2.jpg'),
                )
              ),
              TherapistWidget(
                title: "Dr. Samantha",
                subTitle: "Psychiatrist",
                image: CircleAvatar(
                  backgroundImage: AssetImage('assets/download 3.jpg'),
                )
              ),
            ],
          )
        ],
      ) ,
    );
  }
}



// SizedBox(height: 16,),
// Row(
//
// children: [
// TherapistWidget(
// title: "Dr. Albert Sam",
// subTitle: "Counsellor",
// image: Assets.pi1.image(),
// ),
// TherapistWidget(
// title: "Dr. Hillary Sam",
// subTitle: "psychologist",
// image: Assets.pi3.image(),
// ),
// ],
// ),
// SizedBox(height: 16,),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TherapistWidget(
// title: "Dr. Kevin Jones",
// subTitle: "Counsellor",
// image: Assets.pi5.image(),
// ),
// TherapistWidget(
// title: "Dr. Toyo Partrick",
// subTitle: "psychologist",
// image: Assets.pi10.image(),
// ),
// ],
// ),