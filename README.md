# Autenticação com Clerk Flutter

Este projeto demonstra como integrar a autenticação Clerk em um aplicativo Flutter.

## Funcionalidades

- Autenticação de usuários usando Clerk.
- Funcionalidade dinâmica de login e logout.
- Página inicial exibida após autenticação bem-sucedida.

### Instruções de Configuração

1. Clone o repositório.
2. Certifique-se de ter o Flutter instalado.
3. Execute `flutter pub get` para instalar as dependências.
4. Execute o aplicativo usando `flutter run`.

### Pontos Principais

- O widget `ClerkAuth` é usado para gerenciar a autenticação.
- O widget `ClerkAuthentication` exibe a interface de login.
- O widget `HomePage` é exibido após o login bem-sucedido.

### Observações

- A chave publicável do Clerk está codificada diretamente no arquivo `main.dart` para simplicidade.
- Para produção, considere usar um método seguro para gerenciar chaves de API.
