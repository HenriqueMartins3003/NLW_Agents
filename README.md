# NLW Agents

Projeto desenvolvido durante o evento **NLW (Next Level Week) 20** da Rocketseat, focado em criar uma aplicação de agentes inteligentes.

## 🚀 Tecnologias

- **Runtime**: Node.js com TypeScript
- **Framework**: Fastify
- **Database**: PostgreSQL com pgvector
- **ORM**: Drizzle ORM
- **Validação**: Zod
- **Linter/Formatter**: Biome
- **Package Manager**: pnpm

## 📋 Pré-requisitos

- Node.js 18+
- pnpm
- Docker e Docker Compose

## ⚙️ Configuração

### 1. Clone o repositório
```bash
git clone <repository-url>
cd nlw20
```

### 2. Instale as dependências
```bash
pnpm install
```

### 3. Configure as variáveis de ambiente
Crie um arquivo `.env` na raiz do projeto:
```env
DATABASE_URL=postgresql://user:password@localhost:5432/you_DB
PORT=3333
```

### 4. Inicie o banco de dados
```bash
docker-compose up -d
```

### 5. Execute as migrações e seed
```bash
npx drizzle-kit migrate 
pnpm db:seed
```

### 6. Inicie o servidor
```bash
# Desenvolvimento
pnpm dev

# Produção
pnpm start
```

## 🏗️ Estrutura do Projeto

```
src/
├── db/
│   ├── connection.ts      # Conexão com banco
│   ├── schema/           # Schemas do Drizzle
│   ├── migrations/       # Migrações
│   └── http/routes/     # Rotas da API
├── env.ts               # Configuração de variáveis
└── server.ts           # Servidor Fastify
```

## 🔧 Scripts Disponíveis

- `pnpm dev` - Inicia o servidor em modo desenvolvimento
- `pnpm start` - Inicia o servidor em produção
- `pnpm db:seed` - Executa o seed do banco de dados

## 📡 API Endpoints

- `GET /health` - Health check
- `GET /rooms` - Lista todas as salas

## 🎯 Padrões de Projeto

- **Type Safety**: TypeScript + Zod para validação
- **Database First**: Drizzle ORM com migrações
- **API REST**: Fastify com validação automática
- **Environment**: Validação de variáveis com Zod
- **Code Quality**: Biome para linting e formatação

---

Desenvolvido com 💜 pela Rocketseat
