import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'page_content.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: const Stack(
        children: [
          PageLoginDecoration(),
          PageLoginContent(),
        ],
      ),
    );
  }
}

class PageLoginDecoration extends StatelessWidget {
  const PageLoginDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          "images/bg_login_upper_decoration.svg",
          height: 180,
          allowDrawingOutsideViewBox: true,
        ),
      ],
    );
  }
}

class PageLoginContent extends StatelessWidget {
  const PageLoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginTitle(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.login,
          size: 64,
          color: Colors.purple,
        ),
        const Text(
          "Masuk ke Tugas1.",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 18),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 2,
              ),
            ),
          ),
          padding: const EdgeInsets.only(left: 18),
          child: const Text(
            "Masuk menggunakan NIM asisten praktikum pemrograman aplikasi mobile SI-A.",
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        )
      ],
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const formInputStyle = TextStyle(
      fontSize: 14,
    );

    const formLabelStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          TextFormField(
            controller: usernameController,
            style: formInputStyle,
            decoration: const InputDecoration(
              fillColor: Colors.amber,
              border: UnderlineInputBorder(),
              labelText: 'Username',
              labelStyle: formLabelStyle,
            ),
          ),
          TextFormField(
            controller: passwordController,
            style: formInputStyle,
            obscureText: true,
            decoration: const InputDecoration(
              fillColor: Colors.amber,
              border: UnderlineInputBorder(),
              labelText: 'Password',
              labelStyle: formLabelStyle,
            ),
          ),
          const SizedBox(height: 18),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade400,
            ),
            onPressed: () {
              // MARK: Logika Login
              switch ([usernameController.text, passwordController.text]) {
                case ["123210022", "123210022"]:
                  break;
                case ["123210181", "123210181"]:
                  break;
                default:
                  var snackBar = const SnackBar(
                    content: Text("Login gagal, username atau password salah!"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  return;
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PageContent(nim: usernameController.text),
                ),
              );
            },
            child: const Text(
              "Masuk",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
