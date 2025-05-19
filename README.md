# n8n-baserow-railway-template
Template otimizado para deploy do N8N com Baserow no Railway. Inclui configuração de fila, integração direta entre serviços e otimização de recursos. Perfeito para automações que precisam de um banco de dados robusto e processamento em fila.

# N8N + Baserow Railway Template

Template otimizado para deploy do N8N com Baserow no Railway, incluindo configuração de fila e integração direta entre os serviços.

## 🚀 Características

- N8N em modo de fila
- Baserow auto-hospedado
- PostgreSQL e Redis do Railway
- Configuração otimizada de recursos
- Integração direta entre N8N e Baserow

## 📋 Pré-requisitos

- Conta no [Railway](https://railway.app)
- Railway CLI instalado
- Git instalado

## 🛠️ Como Usar

1. Clone este repositório:
```bash
git clone https://github.com/seu-usuario/n8n-baserow-railway-template.git
cd n8n-baserow-railway-template
```

2. Crie um novo projeto no Railway:
   - Acesse [Railway Dashboard](https://railway.app/dashboard)
   - Clique em "New Project"
   - Selecione "Deploy from GitHub repo"
   - Selecione este repositório

3. Adicione os serviços necessários no Railway:
   - PostgreSQL
   - Redis

4. Configure as variáveis de ambiente no Railway:
   ```env
   N8N_BASIC_AUTH_USER=seu_usuario
   N8N_BASIC_AUTH_PASSWORD=sua_senha
   N8N_ENCRYPTION_KEY=chave_aleatoria_32_caracteres
   GENERIC_TIMEZONE=America/Sao_Paulo
   ```

5. O Railway fornecerá automaticamente:
   - `RAILWAY_STATIC_URL`
   - `PGHOST`, `PGPORT`, `PGDATABASE`, `PGUSER`, `PGPASSWORD`
   - `REDIS_HOST`, `REDIS_PORT`, `REDIS_PASSWORD`

## 🔧 Configuração

### Variáveis de Ambiente

- `N8N_BASIC_AUTH_USER`: Usuário de autenticação do N8N
- `N8N_BASIC_AUTH_PASSWORD`: Senha de autenticação do N8N
- `N8N_ENCRYPTION_KEY`: Chave de criptografia (32 caracteres)
- `GENERIC_TIMEZONE`: Fuso horário (ex: America/Sao_Paulo)

### Recursos

- N8N: 2GB RAM, 2 vCPU
- Baserow: 1GB RAM, 1 vCPU
- Total: 3GB RAM, 3 vCPU

## 🌐 Acessando os Serviços

- N8N: https://n8n.[SEU_DOMINIO]
- Baserow: https://baserow.[SEU_DOMINIO]

## 💡 Dicas

1. **Monitoramento**:
   - Use o dashboard do Railway para monitorar recursos
   - Verifique os logs no Railway Dashboard

2. **Backup**:
   - Configure backup automático do PostgreSQL no Railway
   - Exporte seus workflows do N8N regularmente

3. **Segurança**:
   - Use senhas fortes
   - Mantenha o N8N_ENCRYPTION_KEY seguro
   - Atualize regularmente

## 🤝 Contribuindo

1. Faça um Fork do projeto
2. Crie uma Branch para sua Feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a Branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ⚠️ Suporte

Para suporte, abra uma issue no repositório. 
