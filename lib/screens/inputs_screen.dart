import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName' : 'Alexis',
      'lastName' : 'Antonio',
      'eMail' : 'antonio@google.com',
      'password' : '12345',
      'role' : 'Admin ',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          child: Form(
            key: myFormKey,
            child: Column(
              children:[
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario', 
                  formProperty: 'firstName', 
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formProperty: 'lastName', 
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  inputType: TextInputType.emailAddress,
                  formProperty: 'eMail', 
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  formProperty: 'password', 
                  formValues: formValues,
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                buildDropDownButton(formValues),
                const SizedBox(height: 30),
                buildElevatedButton(
                  context: context,
                  myFormKey: myFormKey,
                  formValues: formValues,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDropDownButton(Map<String, String> formValues){
    return DropdownButtonFormField(
      items: const [
        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
        DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
        DropdownMenuItem(value: 'Developer', child: Text('Developer')),
        DropdownMenuItem(value: 'Jr Developer', child: Text('Jr Developer')),
      ],
      onChanged: (value) {
        print(value);
        formValues['role'] = value ?? 'Admin';
      },
    );
  }

  Widget buildElevatedButton({
    required BuildContext context,
    required GlobalKey<FormState> myFormKey,
    required Map<String, String> formValues,
  }) {
    return ElevatedButton(
      child: const SizedBox(
        width: double.infinity,
        child: Center(
          child: Text('Guardar'),
        ),
      ),
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());

        if (!myFormKey.currentState!.validate()) {
          print('Formulario no válido');
          return;
        }
        print(formValues);
      },
    );
  }
}