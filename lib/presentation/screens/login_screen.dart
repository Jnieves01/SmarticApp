import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartic_app/config/constants/colors.dart';
import 'package:smartic_app/config/constants/fonts.dart';

import 'package:smartic_app/presentation/widgets/login_buttom.dart';

import 'package:smartic_app/presentation/widgets/widget_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final String _user = "admin";
  final String _password = "admin123";

  bool _obscureText = true;

  void UserSingIn() {

    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Por favor, ingrese su correo electrónico y contraseña.'),
        ),
      );
      return;
    }
    if (_emailController.text == _user && _passwordController.text == _password) {
      context.go("/home");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Usuario o contraseña incorrectos.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              
              
              Container(
                color: AppColors.primaryColor,
                
                width: screenSize.width,
                height: screenSize.height,
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                     const Logo(),
                     
                       Center(
                        
                          child: Text(
                            'INICIAR SESIÓN',
                            style: AppFonts.primaryLetter(color: Colors.black,  fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                      TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: 'Usuario / E-Mail',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                  
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.lock),
                          
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),obscureText: _obscureText,
                      ),
                      const SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Column(
                          children: [
                            LoginButtom(text: "INGRESAR", onTap: UserSingIn),
                            
                          ],
                                        
                                       ),
                     ), ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
