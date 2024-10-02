import 'package:flutter/material.dart';
import 'package:pertemuan_4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin, hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 20),
            // CustomTextField(
            //     Controller: username,
            //     label: "Username",
            //     hint: "Masukkan Username"),
            // const SizedBox(height: 20),
            // CustomTextField(
            //     Controller: password,
            //     label: "Password",
            //     hint: "Masukkan Password"),
            // const SizedBox(height: 20),

            const SizedBox(height: 20),
            CustomTextfield(
                Controller: nama, label: "Nama", hint: "Masukkan Nama"),
            const SizedBox(height: 20),
            CustomTextfield(
                Controller: email, label: "Email", hint: "Masukkan Email"),
            const SizedBox(height: 20),
            CustomTextfield(
                Controller: umur, label: "Umur", hint: "Masukkan Umur"),
            const SizedBox(height: 20),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Pria"),
              leading: Radio<String>(
                  value: "Pria",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Wanita"),
              leading: Radio<String>(
                  value: "Wanita",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // print(
                    //     "username: ${username.text}\n password: ${password.text}");
                    // username.clear();
                    // password.clear();
                  });
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}