# HEALORA — PRODUCT DESCRIPTION

## Executive Summary

**HEALORA** — AI-powered Digital Twin for obesity prediction and prevention. From Obesity to Longevity through Digital Twin.

---

## Team

| Role | Name |
|------|------|
| Lead | Sergey Savinskiy |
| Co-founder | Anastasiya Oskolkova |
| Co-founder | Maksim Kovalev |
| Co-founder | Alexandra Bratsilo |
| Co-founder | Ahmed Eltwam |

*Program:* AIMLEI 2026

---

## Problem Set

### Global Obesity Crisis
- **43%** of adults worldwide are overweight (~3.3B adults)
- **16%** global obese rate

### Russia-Specific
- **≥50%** overweight — doubled since 1990
- Majority have ≥2 cardiometabolic diseases (T2DM, hypertension, CVD, dyslipidemia)

### Key Gaps in Current Care
1. One-size-fits-all advice — no real-life personalization
2. No continuous, scalable behavioral support
3. Drugs/surgery are costly and don't change habits

### Clinical Evidence
- **5–10%** weight loss → **58%** diabetes risk reduction
- **78%** lose weight
- **65%** maintain at 1 year via habit change
- **70–80%** weight regain within 1–2 years without proper support

---

## Scientific Validation

### Evidence Base
- Overweight/obesity → higher resting heart rate, reduced HRV (autonomic imbalance)
- 30-sec sit-to-stand test is reproducible, safe in obesity and cardiovascular risk

### Training & Validation Pathway

| Data Source | Content |
|------------|---------|
| **NHANES** | Body measures, pulse, blood pressure, obesity labels |
| **AI4FoodDB** | 100 overweight/obese participants, wearables, biomarkers |
| **Lab Pilot** | 20-40 participants across BMI groups with wearable + sit-to-stand test |

### Feature Inputs
- HRrest (resting heart rate)
- HRpeak (peak heart rate)
- HRR60/HRR120 (heart-rate recovery)
- BMI, waist, BP

### Model Goal
Obesity-related cardiometabolic/autonomic risk score

---

## Behavior Interventions

### Core Behavioral Science Framework

HEALORA integrates WHOOP-style behavioral science principles to help users build healthier habits:

#### Habit Loop Theory
- **Cue identification**: Recognize triggers (time of day, emotional states, social context, location)
- **Behavior awareness**: Track actual actions/routines
- **Reward evaluation**: Understand what benefit the brain perceives

#### Stages of Behavior Change Model
1. **Precontemplation** — Not yet considering change
2. **Contemplation** — Considering change
3. **Preparation** — Planning to change
4. **Action** — Making the change
5. **Maintenance** — Sustaining the change

### HEALORA Journal — Primary Behavior Intervention Tool

The HEALORA Journal is the centerpiece of behavior tracking:

| Feature | Description |
|---------|-------------|
| **300+ Trackable Behaviors** | Log choices across: nutrition, sleep, mental health, recovery, supplements, lifestyle |
| **Personalized Prompts** | Morning notifications after sleep; customizable question sets |
| **Time & Quantity Fields** | Add precision (e.g., "2 cups coffee at 8 AM") for deeper analysis |
| **Customization** | Select only behaviors relevant to your goals (recommended: ≤10 at a time) |

### Behavior Impact Insights

HEALORA uses logged data to generate personalized insights:

- **Correlation Analysis**: After ≥5 "Yes" and ≥5 "No" responses over 90 days, shows impact on health scores
- **Visual Feedback**: See which habits help or hinder HRV, resting heart rate, and sleep quality
- **Actionable Guidance**: Data-driven recommendations to reinforce positive behaviors or adjust counterproductive ones

### Supporting Behavior Change Features

| Feature | Description |
|---------|-------------|
| **Weekly Plan** | Set personalized weekly intentions for sleep, strain, recovery, or health behaviors |
| **HEALORA Coach (AI-Powered)** | Ask questions and receive smart recommendations based on biometric data, behavioral patterns, and goals |
| **Stress Mindset Tracking** | Log whether you perceive stress as "threat" or "challenge" to see how mindset affects physiology |
| **Environmental Design Support** | Content encourages optimizing surroundings to reduce reliance on willpower |
| **Social Accountability** | Share insights with coaches, teams, or communities to reinforce commitment |

### Evidence-Based Strategies Embedded

HEALORA's interventions align with behavioral science research:

- **Micro-milestones**: Break large goals into small, achievable steps to build momentum
- **Positive reinforcement**: Use data to highlight rewarding outcomes of healthy behaviors
- **Self-experimentation framework**: Treat habit changes as mini-experiments to isolate cause/effect
- **Growth mindset cultivation**: Encourage curiosity over self-judgment when analyzing habits

---

## What Habits We Change

### 8 Habits on the Path to Longevity

| # | Habit | Method | Expected Change | Time | Evidence |
|---|-------|-------|---------------|------|----------|
| 1 | Late-night eating | Micro-quest: no food after 9 PM | ↓ 50% episodes | 2–4 weeks | HEALORA POC |
| 2 | Meal logging | Gamified streaks | 71% adherence | 1 week | HEALORA POC |
| 3 | Daily steps | Step reminders + tracking | +2,000 steps/day | 4 weeks | DPP trial |
| 4 | Sleep duration | Wind-down reminders | +1 hour/night | 4 weeks | Clinical guidelines |
| 5 | HRV / stress | Breathing exercises | +10–20% HRV | 8 weeks | Causal model |
| 6 | Diet (carbs vs fat) | Genotype-informed education | 60%+ alignment | 4 weeks | DIETFITS 2025 |
| 7 | Medication adherence | Daily check-ins | >90% adherence | 1 week | Post-market |
| 8 | Emotional eating | Mood logging before meals | ↓ 30% episodes | 4 weeks | Mental health |

---

## Technology

### Core Concept

> **Digital Twin** — a living AI model of your health, updated from 6+ data sources

> **Longevity Path** — an adaptive roadmap of daily micro-quests, medical checks, and education

### Data Sources (6+)
1. **Blood** — Clinical biomarkers
2. **Clinical History** — Medical records
3. **Wearables** — HRV, sleep, activity
4. **Mental Health** — Mood, stress
5. **Diet Logs** — Food tracking
6. **Genetics** — Polygenic risk scores

### Technology Stack

| Component | Description |
|-----------|-------------|
| **OMNI-CAS data** | Polygenic Risk Scoring (PRS), PGS Catalog |
| **Validation** | OpenHumans data, cohorts, accuracy, prediction verification |
| **Automated Ingestion** | Parsing, raw genetic files, standardization, multi-source processing |

---

## Product Flow

```
+-------------------------------------------------------------------------------------+
|                           HEALORA - USER JOURNEY                                   |
+-------------------------------------------------------------------------------------+

     +----------+     +------------------+     +-----------------+     +--------------+
     |  UPLOAD  | --> | CREATE DIGITAL   | --> |  GENERATE       | --> |   TRACK &    |
     |   DATA   |     |     TWIN          |     |  LONGEVITY PATH  |     |   PROGRESS   |
     +----------+     +------------------+     +-----------------+     +--------------+
          |                  |                        |                        |
          v                  v                        v                        v
     +----------+     +------------------+     +-----------------+     +--------------+
     |  Blood    |     |  Multi-omics     |     |  Personalized   |     |  Adaptive   |
     |  Test     |     |  Analysis        |     |  Micro-quests   |     |  Updates    |
     |  + Wear   |     |  + AI Models     |     |  + Predictions  |     |  + RL Engine |
     +----------+     +------------------+     +-----------------+     +--------------+
```

---

## Prototype

### Demo Flow
1. **Landing Page** — value proposition
2. **Data Upload** — blood, genetic, wearable
3. **Digital Twin Generation** — visualization
4. **Longevity Path** — personalized recommendations
5. **Progress Tracking** — longitudinal monitoring

### Physical Test Protocol
- **Equipment:** wearable heart-rate sensor, chair, digital scale, waist tape, optional BP cuff, smartphone
- **Protocol:** 5 min seated rest → 30-s sit-to-stand or 2-min step test → 2 min recovery → record BMI/waist/BP
- **Measured outputs:** Resting HR, peak HR, ΔHR, heart-rate recovery at 1 and 2 min, optional HRV/SpO2, BMI, waist circumference, optional BP
- **ML output:** Obesity-related cardiometabolic/autonomic risk score for the Digital Twin

---

## Market Opportunity

### Target Audience
- Women 25–45, urban, full-time work
- BMI 30–40, 2+ failed diets, emotional eating pattern
- Motivated for 5–10 kg sustainable loss

### Market Sizing

| Segment | Size |
|---------|------|
| **TAM** (D2C wellness twin) | $10–20B |
| **SAM** (Russia + international) | $0.36–1.1B |
| **SOM** | $18–54M |
| **Share** | 5–10% |

### Channels

| Channel | Use Case |
|--------|---------|
| **Clinics** | Prescribe Digital Twin as companion to GLP-1s or lifestyle therapy |
| **Corporate wellness** | Employer-paid longevity paths for high-risk employees |
| **Insurers** | Premium discounts for path adherence |
| **D2C** | Telegram-native "Health Copilot" (proven Ritm model) |

---

## Customer Development Roadmap

### Priority Partners

| Category | Companies |
|---------|-----------|
| Digital therapeutics | Omada Health, Livongo, Lark Health, Vida Health |
| Personalized nutrition | Zest, DayTwo, Viome, Thryve, Nutrino |
| Genetic testing | 23andMe, InsideTracker, Chronomics, Helix, Genotek |
| Weight loss | Noom, BetterMe, Fabulous, Finch |
| AI meal logging | Foodvisor, Snapcalorie, Yazio |
| Russian health tech | Lissa Health, SberHealth, Yandex.Health, Gemotest, Invitro |

### Next Steps
1. **Outreach** — Contact 10–15 priority partners
2. **Pilot** — Run joint pilot with 2–3 partners
3. **Scale** — Roll out white-label API to top 20 partners within 12 months

---

## Pricing

| Segment | Format | Price | Key Metric |
|---------|--------|-------|------------|
| B2C | Freemium → Premium monthly | $14.99/month | 8–12% conversion |
| B2C | Premium annual | $119.99/year | LTV $120–180 |
| B2C | Genetic add-on | $29.99 (one-time) | Upsell 20% |
| B2B (Nutritionist) | Pro subscription | $49/month | Saves 10h/week |
| B2B (Clinic small) | Clinic license | $299/month | 50 patients |
| B2B (Clinic large) | Clinic license | $999/month | 500 patients |
| B2B2C (Corporate) | Per employee | $8–12/month | 3–5x ROI |
| B2B2C (Insurance) | Revenue share | 20–30% | Outcomes-based |

---

## 3-Week Sprint Plan

| Week | Mon | Tue | Wed | Thu | Fri | Sat | Sun |
|------|-----|-----|-----|-----|-----|-----|-----|
| **1** | Custdev | Custdev | Custdev | MVP | MVP | — | — |
| **2** | MVP | Digital Twin Dev | Digital Twin Dev | Scoring Logic | Model Validation | — | — |
| **3** | Deployment | Prototyping | Experiment | Experiment | Dry Run | — | — |

---

## Key Metrics

- **71%** logging adherence vs 38% control (proven in Ritm POC)
- Validates clinical guidelines in real life
- Low cost — no expensive lab equipment
- Fast — under 10 minutes
- Scalable — clinics, workplaces, or at home
- Clinically validated — 30-sec sit-to-stand test reproducible and safe

---

## Vision

> **Digital Twin** — a single, living model of the user, fed by multimodal data (blood, genetics, wearables, mental health, diary)

> **Longevity Path** — an adaptive, gamified roadmap that turns clinical insights into daily micro-quests

### Value Chain
Labs → Service → Blockchain-based LPath → Ecosystem (clinics, nutrition, sports, mental health)

---

*Generated: April 2026 | AIMLEI-2026 | healora.ru*