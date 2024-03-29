import 'package:flutter/material.dart';

class TextfiledScreen extends StatefulWidget {
  const TextfiledScreen({super.key});

  @override
  State<TextfiledScreen> createState() => _TextfiledScreenState();
}

class _TextfiledScreenState extends State<TextfiledScreen> {
  var emailtext = TextEditingController();

  var passtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expert Flutter"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailtext,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.black, width: 3),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.green),
                  ),

                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: passtext,
                obscureText: true,
                obscuringCharacter: '*',
                //enabled: false,
                decoration: InputDecoration(
                    hintText: "Enter your Password",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Colors.black, width: 3),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.password,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: Colors.grey, width: 3))),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    String uEmail = emailtext.text.toString();
                    String uPass = passtext.text;

                    print("Email : $uEmail , pass : $uPass");
                  },

                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
