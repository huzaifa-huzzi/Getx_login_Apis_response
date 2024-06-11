import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_login_api/Controller/LoginController.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Login Api through Getx'),
      ),
      body: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration:const  InputDecoration(
                  hintText: 'Email',

                ),
              ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration:const  InputDecoration(
                hintText: 'Email',

              ),
            ),
          const   SizedBox(height:  50,),
            Obx((){
              return InkWell(
                onTap: (){
                  controller.loginApi();
                },
                child: Container(
                  height: 45,
                  child:const  Center(child: Text('Login'),),
                ),
              );
            })

          ],
        ),
      ),
    );
  }
}
