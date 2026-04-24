# Healora AI

**AI-Powered Digital Twin for Personalized Longevity & Healthspan Optimization**

---

## Project Overview

Healora AI creates a digital twin of microglia for predictive neuroprotection, longevity protocols, and personalized health optimization. The platform integrates multi-omics data, AI/ML models, and RAG-based scientific knowledge to generate individualized longevity paths.

## Recent Updates

### 2026-04
- **Brand renamed**: GliaTwin → Healora
- **Landing page** deployed at [longevity.startupassist.ru](https://longevity.startupassist.ru)
- **Interactive diagrams**: Sankey flow, Scatter plots with Plotly.js
- **Product documentation** restructured with entities and experiments
- **Intervention database** (93 interventions) created inspired by Whoop ecosystem
- **Digital Twin experiment design** with Russian interview questions
- **Server deployment** via devops.sh (217.114.8.5)

---

## Folder Structure

```
healora/
├── mvp-web-app/                    # MVP Web Application
│   ├── sh/                         # DevOps scripts
│   │   ├── devops.sh               # CI/CD deployment
│   │   └── vps.sh                  # Server setup
│   └── www/
│       └── longevity.startupassist.ru/
│           └── index.html          # Landing page
│
├── product-docs/                    # Product Documentation
│   ├── entities/                   # Entity definitions
│   │   ├── INTERVENTION_DB.md      # 93 interventions database
│   │   ├── biomedical_surveys.md   # Survey instruments
│   │   └── INTERVENTION.md         # Intervention reference
│   ├── product/                     # Product specs
│   │   ├── PRODUCT_DESCRIPTION.md  # Full product description
│   │   ├── agenda.md               # Agenda with key figures
│   │   └── images/                 # Architecture diagrams (SVG)
│   ├── digitaltwin/                 # Digital Twin research
│   │   └── docs/
│   │       └── experiment-design.md # Experiment protocol
│   ├── puml/                        # PlantUML diagrams
│   │   └── 1.1 DTLP issues.puml    # DTLP pipeline diagram
│   └── README.md
│
├── scientific-base/                 # Scientific Research
│   ├── docs/
│   │   └── issues.md               # Research issues tracker
│   ├── data/                       # Research datasets
│   └── README.md
│
├── marketing/                       # Market Research
│   ├── index.html                   # Market analysis page
│   ├── research/
│   ├── competitors/
│   └── README.md
│
├── docs-extra/                      # Extra Materials
│   ├── presentations/
│   └── notes/
│
└── README.md                        # This file
```

---

## Tech Stack

| Component | Technology |
|-----------|------------|
| **Frontend** | HTML5, CSS3, JavaScript, Plotly.js |
| **AI/LLM** | OpenAI GPT-4, Claude, RAG |
| **ML** | PyTorch, TensorFlow, scikit-learn |
| **Data** | Multi-omics (genomics, proteomics, metabolomics) |
| **Visualization** | PlantUML, D3.js, Plotly |
| **Deployment** | Nginx, Docker, Certbot SSL |
| **Server** | Beget VPS (Ubuntu 22.04, 217.114.8.5) |

---

## Key Products

### 1. Landing Page
- **URL**: https://longevity.startupassist.ru
- **Features**: Interactive Sankey diagram, Scatter plot, SVG icons, mobile-optimized

### 2. Digital Twin Pipeline
```
Data Sources → Feature Extraction → Digital Twin → Longevity Path
     ↓              ↓                   ↓              ↓
Blood Test    NLP/Psycholinguistics   RAG NLP        Personalized
Genetic      LIWC                    LLM/ML         Protocols
Wearable     Embeddings              Validation
Diary
```

### 3. Intervention Database
- 93 interventions categorized by type
- Impact power ratings (0-10)
- Evidence levels (A/B/C/D)
- Data collection methods

### 4. Experiment Protocol
- 22 interview questions (Russian)
- Diary protocol (7-14 days)
- Validation via simulation
- Ground truth comparison with LLM-generated DT

---

## Quick Links

| Document | Description |
|----------|-------------|
| [PRODUCT_DESCRIPTION.md](./product-docs/product/PRODUCT_DESCRIPTION.md) | Full product specification |
| [agenda.md](./product-docs/product/agenda.md) | Agenda with key figures & terms |
| [experiment-design.md](./product-docs/digitaltwin/docs/experiment-design.md) | Digital twin experiment protocol |
| [INTERVENTION_DB.md](./product-docs/entities/INTERVENTION_DB.md) | 93 interventions database |
| [1.1 DTLP issues.puml](./product-docs/puml/1.1%20DTLP%20issues.puml) | Pipeline architecture diagram |
| [market analysis](./marketing/index.html) | Market research and competitors |
| [issues.md](./scientific-base/docs/issues.md) | Research issues tracker |

---

## Deployment

### Production Server
- **Host**: root@217.114.8.5
- **Domain**: longevity.startupassist.ru
- **Web Root**: /var/www/longevity.startupassist.ru
- **SSL**: Let's Encrypt (certbot)

### Deploy Commands
```bash
# From project root or any subdirectory:
cd longivity
bash mvp-web-app/sh/devops.sh deploy
```

### DevOps Menu
```
1) Deploy prod (/var/www/longevity.startupassist.ru/)
2) Pull from GitHub
3) Backup current
4) Rollback
5) Check status (nginx, SSL)
6) View logs
7) Exit
```

---

## Team Structure

| Role | Focus Area |
|------|------------|
| **CEO** | Business development, strategy |
| **CTO** | AI/ML, technical architecture |
| **Scientific Advisor** | Neuroscience, gerontology |
| **Medical Advisor** | Clinical practice, anti-aging |

---

## Milestones

| Milestone | Status | Date |
|-----------|--------|------|
| Landing page MVP | ✅ Deployed | 2026-04 |
| Intervention database | ✅ Complete | 2026-04 |
| Digital Twin experiment design | ✅ Complete | 2026-04 |
| Market analysis | ✅ Complete | 2026-04 |
| Scientific publications | 🔄 In progress | 2026 |
| Clinical validation study | 🔄 Planned | 2026-2027 |

---

## Contact

- **Business**: business@Healora.ai
- **Research**: research@Healora.ai
- **General**: info@Healora.ai

---

## License

MIT License - 2026 AIMLEI-2026

Copyright (c) 2026 Healora AI