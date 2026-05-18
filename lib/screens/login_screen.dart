import 'package:flutter/material.dart';

import 'product_screen.dart';

/// Tela de login da aplicação.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F2F4),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black26),
                ),
                child: const _LoginForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  // Controladores para pegar o texto digitado
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  // Variável para controlar a mensagem de erro
  String? _errorMessage;

  void _fazerLogin() {
    // Validando dados (Atividade 1)
    if (_userController.text == 'admin' && _passwordController.text == '12345') {
      setState(() {
        _errorMessage = null; // Limpa o erro
      });
      // Navegar para a tela de produtos (Atividade 2)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductsScreen()),
      );
    } else {
      setState(() {
        _errorMessage = 'Credenciais inválidas';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _Title(),
        const SizedBox(height: 28),
        // Passar os controladores para os campos de texto
        _UsernameField(controller: _userController),
        const SizedBox(height: 16),
        _PasswordField(controller: _passwordController),
        const SizedBox(height: 16),
        
        // Exibir erro condicionalmente
        if (_errorMessage != null)
          Text(
            _errorMessage!,
            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          
        const SizedBox(height: 16),
        // Passar a função para o botão
        _LoginButton(onPressed: _fazerLogin),
        const SizedBox(height: 16),
        const _ForgotPasswordLink(),
        const SizedBox(height: 8),
        const _SignUpLink(),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Minha aplicação',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UsernameField extends StatelessWidget {
  final TextEditingController controller;
  const _UsernameField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'usuário',
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black26),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black26),
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  final TextEditingController controller;
  const _PasswordField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Vinculando o controller
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'senha',
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black26),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black26),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _LoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3D5AFE),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          )
        ),
        child: const Text('Login'),
      ),
    );
  }
}

class _ForgotPasswordLink extends StatelessWidget {
  const _ForgotPasswordLink();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Esqueceu a senha?',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 13,
      ),
    );
  }
}

class _SignUpLink extends StatelessWidget {
  const _SignUpLink();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Não tem uma conta? Cadastre-se',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 13,
      ),
    );
  }
}
