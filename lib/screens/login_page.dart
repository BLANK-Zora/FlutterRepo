import "package:flutter/material.dart";
import "package:flutter_application_2/utils/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name1 = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Login Page $name1",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name1 = value;
                      setState(() {
                        
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            InkWell(
              splashColor: Colors.redAccent,
              onTap:  () async =>  {
                await Future.delayed(const Duration(seconds: 2)),
                // {Navigator.pushNamed(context, MyRoutes.homeRoute)}
              },
              child: Ink(
                // duration: const Duration(seconds: 2),
                width: 150,
                height: 80,
                // alignment: Alignment.center,
                decoration: (
                  BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.purple.shade200,
                )),
                child: const Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
              ),
            )
            // ElevatedButton(
            //   onPressed: () =>
            //       {Navigator.pushNamed(context, MyRoutes.homeRoute)},
            //   style: const ButtonStyle(
            //       backgroundColor: MaterialStatePropertyAll(
            //           Color.fromARGB(181, 107, 99, 255)),
            //       foregroundColor: MaterialStatePropertyAll(Colors.white),
            //       minimumSize: MaterialStatePropertyAll(Size(120, 70))),
            //   child: const Text(
            //     "Login",
            //     style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
            //   ),
            // )
          ]),
        )));
  }
}
