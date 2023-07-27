// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//
//   void _submitForm() {
//     // Perform signup logic here
//     String name = _nameController.text;
//     String email = _emailController.text;
//     String password = _passwordController.text;
//
//     // Validate inputs and perform necessary actions
//     if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
//       // TODO: Implement signup logic or API call
//
//       // Clear input fields after successful signup
//       _nameController.clear();
//       _emailController.clear();
//       _passwordController.clear();
//
//       // Show success message or navigate to the next screen
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Signup successful!'),
//           backgroundColor: Colors.green,
//         ),
//       );
//     } else {
//       // Show error message if any field is empty
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Please fill all fields'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup Page'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(
//               onPressed: _submitForm,
//               child: Text('Signup'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
