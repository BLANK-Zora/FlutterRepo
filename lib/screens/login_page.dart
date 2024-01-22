import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center( 
        child: Column(
          children : [

            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover),

              const SizedBox(
                height: 30,
              ),

              const Text("Login Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),),


              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ), 
                ),
                
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                  )
                )
                  ],
                ),
              ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: ()=>{
                print("Hello")
              }, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 253, 226, 235)),
                foregroundColor: MaterialStatePropertyAll(Colors.purple)
              ),
              child: const Text("Login"),)
          ]
        ))
    );
  }
}