import 'package:flutter/material.dart';
import 'package:kilogram/models/post_model.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  List<PostModel> data = [
    PostModel(
        name: "Putri Megawat",
        profilePhotoUrl:
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
        photoUrl:
            "https://images.pexels.com/photos/13940670/pexels-photo-13940670.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      PostModel(
        name: "Postbowo",
        profilePhotoUrl:
            "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
        photoUrl:
            "https://images.pexels.com/photos/33961/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      PostModel(
        name: "Diganjar Wadas",
        profilePhotoUrl:
            "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
        photoUrl:
            "https://images.pexels.com/photos/5185446/pexels-photo-5185446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      PostModel(
        name: "Anis Aned",
        profilePhotoUrl:
            "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
        photoUrl:
            "https://images.pexels.com/photos/12166201/pexels-photo-12166201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      PostModel(
        name: "Cak Iplus",
        profilePhotoUrl:
            "https://images.unsplash.com/photo-1618077360395-f3068be8e001?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
        photoUrl:
            "https://images.pexels.com/photos/11544823/pexels-photo-11544823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(Duration(seconds: 3));
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  
                Center(child: Image.asset("assets/images/logo.png")),

                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                    children: [
                      SizedBox(height: 16,),

                      Row(
                        children: [
                          CircleAvatar(radius: 20, backgroundImage: NetworkImage(data[index].profilePhotoUrl),),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( data[index].name, style: TextStyle(fontSize: 16, color: Colors.black,),),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 16,),
                      
                      Image.network(data[index].photoUrl, height: 204, width: double.infinity,),

                      Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite),
                              SizedBox(width: 10,),
                              Icon(Icons.chat_bubble),
                              SizedBox(width: 10,),
                              Icon(Icons.send),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Icon(Icons.bookmark)
                            ],
                          )
                        ],
                      ),
                ),
                    ],
                  );
                  },
                ),
            
            
                ],
              ),
            ),
          ),
          )
        ),
    );
  }
}