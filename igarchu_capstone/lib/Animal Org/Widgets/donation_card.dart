import '../../constants.dart';
import '../Models/donation_models.dart';
import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final Donation donation;
  const DonationCard({Key? key, required this.donation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        color: kbutton2,
          child: Column(
            children: [
               Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        const Icon(Icons.location_on_rounded, color: kbutton1, size: 20,),
                        const SizedBox(width: 10,),
                        Text('${donation.id}', style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                        ),)
                      ]),
                    ),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                height: 200, 
                width: 280,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(donation.imageUrl, 
                  fit: BoxFit.cover,
                  ),
                ),),
              Container(
                padding: const EdgeInsets.only(top:10.0, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: kBackground2,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(donation.orgName, style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kbutton2,
                  fontFamily: 'Poppins',
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5.0, right: 10, left: 10),
                child: Text(donation.description, style: const TextStyle(
                  fontSize: 15,
                  color: kbutton2,
                  fontFamily: 'Poppins'
                ),
                textAlign: TextAlign.justify,),
              ),

              Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        const Icon(Icons.location_on_rounded, color: kbutton1, size: 20,),
                        const SizedBox(width: 10,),
                        Text(donation.location, style: const TextStyle(
                          fontSize: 15,
                          color: kbutton2,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                        ),)
                      ]),
                    ),
                    
                  Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Icon(Icons.timelapse_outlined, color: Colors.blue, size: 20,),
                    const SizedBox(width: 10,),
                    Text(donation.days, style: const TextStyle(
                    fontSize: 15,
                    color: kbutton2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),)
                ]),),

                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Icon(Icons.monetization_on, color: Color.fromARGB(255, 247, 197, 48), size: 20,),
                    const SizedBox(width: 10,),
                    Text('${donation.targetAmount.toString()}', style: const TextStyle(
                    fontSize: 15,
                    color: kbutton2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),)
                ]),),

                SizedBox(height: 10,),
                 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kbutton1,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      ),
                      onPressed: (){}, 
                      child: const Text('Donate', style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),)),
                   SizedBox(height: 13,)
                  ],
                ),
              ),  
            ],
          ),
        
      ),
    );
  }
}