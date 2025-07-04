import 'package:flutter/material.dart';
import 'custom_button.dart';
void main(){
  runApp(const MaterialApp(
    home:ProfilePage(),
    debugShowCheckedModeBanner:false,
  ));
}
class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
        children:[
          const SizedBox(height:30),
          const Center (child:CircleAvatar(
            radius:60,
            backgroundImage:AssetImage('assets/image.jpeg'),
            ),
            ),
            const SizedBox(height:30),
            const Text(
              "Khushi Dhir",
              style:TextStyle(fontSize:24,fontWeight:FontWeight.bold),

            ),
            const Text(
              "Flutter Developer",
              style:TextStyle(fontSize:18,color:Colors.black),
            ),
            const SizedBox(height:30),
            Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
               _buildStatBox("Posts", "24"),
                _buildStatBox("Followers", "1.2k"),
                _buildStatBox("Following", "180"),
            ],
            ),
            const SizedBox(height:30),
            Container(
               margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
            
        ],
      ),
      child:const Text(
        "Passionate about building beautiful mobile apps using Flutter. "
                "Loves clean UI, good coffee, and open-source contributions.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
      ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text:"Edit Profile",
              onPressed:(){

              },
            )
        ],
      ),
    ),
    );
  }
  static Widget _buildStatBox(String label,String value){
    return Column(
      children: [
      Text(
        value,
        style:const TextStyle(fontSize:30,fontWeight:FontWeight.bold),

      ),
      const SizedBox(height:3),
      Text(label,style:const TextStyle(color:Colors.black),
      ),

  ],
    );
  }
}