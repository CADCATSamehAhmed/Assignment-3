import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Login Screen App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Codeplayon',
                      style: TextStyle(
                          fontSize: 29.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'This field cannot be empty !';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black87,fontSize: 16.0),
                  decoration:InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "User Name",
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 13.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.5
                      ),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  enabled: true,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'This field cannot be empty !';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black87,fontSize: 16.0),
                  decoration:InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 13.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.5
                      ),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                //Forgot password Button
                TextButton(
                  onPressed: (){
                    //add here the navigation screen
                  },
                  child: const Text("Forgot Password",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    )
                  )
                ),
                const SizedBox(height: 10.0),
                //login Button
                ElevatedButton(
                    onPressed: (){
                      //add here the navigation screen
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 2.0,
                      shadowColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(13.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                          "login",
                          style: TextStyle(color: Colors.white,fontSize: 17.0),
                        ),
                      ],
                    )
                ),
                const SizedBox(height: 10.0),
                //didn't have an account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Does not have account ?",
                      style:
                      TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    TextButton(
                      onPressed: () {
                        //add here the navigation screen
                      },
                      child: const Text("Sing in",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
