//import 'package:flutter/material.dart';
//
//
//class RegisterPage extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Text('RegisterPage'),
//     ),
//   );
//  }
//}

import 'package:flutter/material.dart';

import 'package:cchat_app/widgets/custom_widgets.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Logo(
                  logo: 'assets/tag-logo.png', 
                  titulo: 'Register',
                ),
                  
                _Form(),
                  
                Labels(
                  texto1: '¿Ya Tienes Una Cuentas?', 
                  texto2: 'Ingresar Ahora !!!', 
                  ruta: 'login',
                ),
                  
                Text('Términos y Condiciones De Uso', style: TextStyle( fontWeight: FontWeight.w300 ) ), 
                      
              ],
            ),
          ),
        ),
      )
   );
  }
}


class _Form extends StatefulWidget {
  // const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final nameCtrl  = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( top: 40 ),
      padding: EdgeInsets.symmetric( horizontal: 50 ),
      child: Column(
        children: [
          
          CustomInput(
            // icon: Icons.account_circle_rounded, 
            icon: Icons.perm_identity, 
            placeholder: 'Nombre', 
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          
          CustomInput(
            icon: Icons.mail_outline, 
            placeholder: 'Email', 
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          
          CustomInput(
            icon: Icons.lock_outline, 
            placeholder: 'Password', 
            // keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),

          BotonAzul(
            texto: 'Crear',
            onPressed: (){
              print( nameCtrl.text );
              print( emailCtrl.text );
              print( passCtrl.text );
            }, 
          ),
        ],
      ),
    );
  }
}


