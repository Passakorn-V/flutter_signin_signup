import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_screen/component/my_button.dart';
import 'package:onboard_screen/component/my_textfield.dart';
import 'package:onboard_screen/screen/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController(); 
  final passwordController = TextEditingController(); 
  final repasswordController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/S1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Welcome To Our Restaurant',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),              
              ),
              Text(
                '\nCreate Your Account to Log In \n',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),              
              ),

              const SizedBox(height: 20,),

              MyTextField(
                controller: nameController,
                hintText: 'Enter Your Name',
                obsurceText: false,
                labelText: 'Name',
              ),

              const SizedBox(height: 20,),

              MyTextField(
                controller: emailController,
                hintText: 'Enter Your Email',
                obsurceText: false,
                labelText: 'Email',
              ),

              const SizedBox(height: 20,),

              MyTextField(
                controller: passwordController,
                hintText: 'Enter Your Password',
                obsurceText: true,
                labelText: 'Password',
              ),

              const SizedBox(height: 20,),

              MyTextField(
                controller: repasswordController,
                hintText: 'Enter Your Password Again',
                obsurceText: true,
                labelText: 'Re-Password',
              ),    

              const SizedBox(height: 20,),

              MyButton(onTap: (){}, hinText: 'Register'),    
                const SizedBox(
                  height: 20,
                ), 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have a member ?',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(
                    width: 1,
                  ),
                    
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                      ),
                    ),
                  ),         
                ],
              ),


              const Spacer(),

            ],
          ) 
        ),
      )
    );
  }
}