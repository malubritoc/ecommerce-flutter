# dev_mobile_ecommerce_flutter

Projeto da 2ª unidade (P2) da disciplina de Desenvolvimento Mobile.
Aplicação de e-commerce construída com Flutter, desenvolvida de forma incremental ao longo de 4 etapas.

## Etapas

- **Etapa 1**: Tela de login (apenas visual, sem interação).
- **Etapa 2**: Validação de login + tela de produtos mockados + logout.
- **Etapa 3**: Integração com a Fake Store API (autenticação real e listagem de produtos) + persistência local da sessão.
- **Etapa 4**: Carrinho de compras (adicionar, alterar quantidade, remover, total).

## Como rodar

> Pré-requisito: ter o Flutter SDK instalado (https://docs.flutter.dev/get-started/install).

Na primeira execução, gere os arquivos de plataforma (Android, iOS, etc.) com:

```bash
flutter create .
```

Depois:

```bash
flutter pub get
flutter run
```
