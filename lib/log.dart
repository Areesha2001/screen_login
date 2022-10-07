import 'package:flutter/material.dart';
import 'admin.dart';

class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/forest.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: Container(
              margin:
              const EdgeInsets.symmetric(vertical: 90.0, horizontal: 50),
              padding: const EdgeInsets.only(top: 50, bottom: 80, right: 30.0, left: 30.0),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('assets/trrisum.jpg'),
                    ),
                  ),
                  const Text(
                    'NAME',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    height:5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.amber,
                      ),
                      filled: true,
                      hintText: "Enter your Name",
                      hintStyle: const TextStyle(color: Colors.amber),
                    ),
                  ),
                  SizedBox(
                    height:15,
                  ),
                  const Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    height:5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.amber,
                      ),
                      filled: true,
                      hintText: "Enter Password",
                      hintStyle: const TextStyle(color: Colors.amber),
                    ),
                  ),

                  SizedBox(
                    height:15,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) =>admin()),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
F
