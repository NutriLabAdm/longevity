# Interventions & Habbits Catalog for Digital Twin

**Purpose:** Evidence-based interventions and habits database for the longevity Digital Twin system  
**Total Records:** 93 interventions across 8 categories  
**Last Updated:** 2025

---

## Synopsis

This catalog provides a comprehensive list of 93 validated interventions and habits that positively impact healthspan and longevity. Each intervention is categorized by domain (Physical, Medical, Mental, Food, Sleep, Social, Environmental, Medicine), with assigned impact scores (0-10), evidence levels (A-D), and data sources.

Key findings:
- **62%** of interventions are behavioral (lifestyle-based)
- **38%** have Level A evidence (highest)
- **Core domains:** Physical (24%), Medical (23%), Mental (19%), Food (15%)
- **Top impact (10.0):** Safety (seatbelts, helmets)

The database integrates with wearable ecosystems (Whoop, Oura, Fitbit, Garmin) and supports personalized intervention selection based on biomarkers, genetic markers, and lifestyle data.

---

## Summary

### By Categories

| Category | Count | Share | Avg Impact |
|-----------|--------|------|------------|
| **Physical** | 22 | 24% | 7.9 |
| **Medical** | 21 | 23% | 8.5 |
| **Mental** | 18 | 19% | 7.6 |
| **Food** | 14 | 15% | 7.9 |
| **Sleep** | 6 | 6% | 8.1 |
| **Social** | 6 | 6% | 8.3 |
| **Environmental** | 3 | 3% | 7.8 |
| **Medicine** | 3 | 3% | 7.8 |
| **Total** | **93** | **100%** | **7.9** |

### By Intervention Type

| Type | Count | Share |
|-----|--------|------|
| **Behavior** | 58 | 62% |
| **Device** | 14 | 15% |
| **Diagnostic** | 13 | 14% |
| **Medical** | 5 | 5% |
| **Supplement** | 3 | 3% |

### By Evidence Level

| Level | Count | Share |
|---------|--------|------|
| **A** | 35 | 38% |
| **B** | 34 | 37% |
| **C** | 21 | 23% |
| **D** | 3 | 3% |

### By Regularity

| Regularity | Count |
|--------------|--------|
| **Daily** | 45 |
| **Weekly** | 27 |
| **Yearly** | 12 |
| **On-demand** | 5 |
| **Once** | 2 |
| **Monthly** | 2 |

### Top-10 by Impact Power

| # | Intervention | Impact |
|---|-------------|--------|
| 1 | Safety (seatbelts, helmets) | 10.0 |
| 2 | Training: HIIT | 9.0 |
| 3 | Training: Aerobic | 9.0 |
| 4 | Sleep: Bedtime | 9.0 |
| 5 | Devices: Sleep Quality | 9.0 |
| 6 | Nutrition: Alcohol Limit | 9.0 |
| 7 | Medicine: Regular Checkup | 9.0 |
| 8 | Medicine: Screening | 9.0 |
| 9 | Medicine: Vaccination | 9.0 |
| 10 | Habits: Teeth Brushing | 9.0 |

---

## Table Structure

| Field | Type | Description | Required |
|-------|-----|-------------|----------|
| **name** | STRING | Intervention name | Yes |
| **code_id** | STRING | Unique ID (e.g., INT_001) | Yes |
| **description** | TEXT | Description and impact | Yes |
| **category** | ENUM | Category: medical / physical / food / mental / medicine / sleep / social / environmental | Yes |
| **type** | ENUM | Type: behavior / device / supplement / medical / diagnostic | Yes |
| **impact_power** | FLOAT | Health impact strength (0-10) | Yes |
| **regularity** | STRING | Regularity: daily / weekly / monthly / on-demand | Yes |
| **data_source** | STRING | Data source: wearable / self-report / lab / device / biometric | Yes |
| **biomarkers** | JSON | Related biomarkers | No |
| **evidence_level** | ENUM | Evidence level: A / B / C / D | Yes |
| **sources** | TEXT | Sources (PMID, URL) | Yes |
| **contraindications** | TEXT | Contraindications | No |

---

## Sources

### Scientific Databases
1. **PubMed** — pubmed.ncbi.nlm.nih.gov
2. **Cochrane Library** — cochranelibrary.com
3. **Nature** — nature.com
4. **Science** — science.org
5. **Cell** — cell.com

### Industrial Sources
6. **Whoop** — whoop.com (monitoring ecosystem)
7. **Oura Ring** — ouraring.com (wearable device)
8. **Fitbit** — fitbit.com
9. **Apple Health** — apple.com/health
10. **Garmin** — garmin.com

### Guidelines
11. **WHO Guidelines** — who.int/publications
12. **American Heart Association** — heart.org
13. **CDC** — cdc.gov
14. **NIH** — nih.gov

---

## Interventions Table

| Code | Name | Description | Category | Type | Impact | Regularity | Data Source | Evidence | Sources |
|------|------|-------------|----------|------|--------|-----------|-------------|-------------|----------|--------|
| **01_SLEEP** |
| 01_1 | Sleep: Bedtime | Fixed bedtime for circadian rhythm stabilization | sleep | behavior | 9.0 | daily | self-report, wearable | A | PMID: 31735704; whoop.com |
| 01_2 | Sleep: Blue Light Limit | Screen avoidance 1-2 hours before bed for melatonin | sleep | behavior | 8.5 | daily | self-report, wearable | A | PMID: 32852159; nature.com |
| 01_3 | Sleep: Cool Temperature | Bedroom temperature 18-21°C for optimal sleep | sleep | behavior | 7.5 | daily | wearable, device | B | PMID: 29621487 |
| 01_4 | Sleep: Dark Room | Complete darkness for sleep quality | sleep | behavior | 7.0 | daily | self-report | B | sleepfoundation.org |
| 01_5 | Sleep: Nap | Short nap (20-30 min) for recovery | sleep | behavior | 8.0 | on-demand | wearable | B | PMID: 24795612 |
| 01_6 | Sleep: Ritual | Evening sleep ritual | sleep | behavior | 8.5 | daily | self-report, wearable | B | whoop.com; sleepfoundation.org |
| **02_PHYSICAL** |
| 02_1 | Training: HIIT | High-intensity interval training for cardio | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804; whoop.com |
| 02_2 | Training: Strength | Regular strength training for muscle mass | physical | behavior | 8.5 | weekly | wearable, device | A | PMID: 28615992 |
| 02_3 | Training: Aerobic | Running, swimming, cycling | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804 |
| 02_4 | Training: Stretching/Yoga | Flexibility and mobility | physical | behavior | 7.0 | weekly | self-report | B | PMID: 28715760 |
| 02_5 | Training: Walking | Daily walks for activity and HRV | physical | behavior | 7.5 | daily | wearable | B | whoop.com |
| 02_6 | Recovery: Massage | Massage for muscle recovery | physical | behavior | 6.5 | weekly | self-report | C | - |
| 02_7 | Stress: Cold Shower | Cryotherapy, cold shower for parasympathetic activation | physical | behavior | 7.0 | daily | self-report | C | - |
| 02_8 | Habits: Contrast Shower | Hot/cold water alternation | physical | behavior | 7.5 | daily | self-report | C | - |
| 02_9 | Habits: Teeth Brushing | Oral hygiene 2 times/day | physical | behavior | 9.0 | daily | self-report | A | - |
| 02_10 | Habits: Sun Protection | SPF and UV protection | physical | behavior | 9.0 | daily | self-report | A | - |
| 02_11 | Habits: Posture | Posture control during day | physical | behavior | 7.0 | daily | self-report | C | - |
| 02_12 | Habits: Movement Breaks | Hourly 5-minute break | physical | behavior | 7.5 | daily | wearable | B | - |
| 02_13 | Habits: Ergonomics | Proper workspace setup | physical | behavior | 7.0 | daily | self-report | B | - |
| 02_14 | Habits: Safety | Seatbelts, helmets, protection | physical | behavior | 10.0 | daily | self-report | A | CDC |
| **03_MENTAL** |
| 03_1 | Recovery: Meditation | Meditation and mindfulness for stress reduction | mental | behavior | 8.5 | daily | self-report, wearable | A | PMID: 24795612; ouraring.com |
| 03_2 | Recovery: Breathing | Deep breathing, box breathing for parasympathetic activation | mental | behavior | 8.0 | daily | wearable | B | PMID: 29165047 |
| 03_3 | Stress: Journaling | Reflection and journaling for emotional regulation | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| 03_4 | Stress: Digital Detox | Technology breaks for mental health | mental | behavior | 7.0 | daily | self-report | C | - |
| 03_5 | Mental: Learning | Continuous learning, cognitive training | mental | behavior | 8.0 | daily | self-report | B | - |
| 03_6 | Mental: Goals | Setting and achieving personal goals | mental | behavior | 8.0 | weekly | self-report | B | - |
| 03_7 | Mental: Gratitude | Daily gratitude practice | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| 03_8 | Mental: Creativity | Creative activities (music, drawing) | mental | behavior | 7.0 | weekly | self-report | C | - |
| 03_9 | Mental: Deep Breathing | Breathing exercises 2x/day | mental | behavior | 8.0 | daily | wearable | B | whoop.com |
| 03_10 | Mental: Bibliotherapy | Reading for cognitive health | mental | behavior | 7.0 | daily | self-report | C | - |
| 03_11 | Mental: Music | Music for relaxation | mental | behavior | 6.5 | daily | self-report | C | - |
| 03_12 | Mental: Laughter | Regular laughter and positivity | mental | behavior | 7.5 | daily | self-report | C | - |
| 03_13 | Mental: Acceptance | Acceptance practices | mental | behavior | 8.0 | daily | self-report | B | - |
| **04_FOOD** |
| 04_1 | Nutrition: Calorie Limit | Moderate calorie restriction for longevity | food | behavior | 8.5 | daily | self-report, lab | A | PMID: 29135908 |
| 04_2 | Nutrition: Intermittent Fasting | 16:8 or 5:2 fasting protocols | food | behavior | 8.0 | daily | self-report, wearable | B | PMID: 29135908 |
| 04_3 | Nutrition: Protein | Adequate protein intake (1.6-2.2 g/kg) | food | behavior | 8.0 | daily | self-report | A | ISSN; nutrition.org |
| 04_4 | Nutrition: Omega-3 | Omega-3 fatty acids (EPA/DHA) | food | supplement | 8.5 | daily | lab, self-report | A | PMID: 24860198 |
| 04_5 | Nutrition: Antioxidants | Antioxidant-rich foods (berries, greens) | food | behavior | 7.5 | daily | self-report | B | - |
| 04_6 | Nutrition: Fiber | Adequate fiber intake (25-35 g/day) | food | behavior | 8.0 | daily | self-report | A | - |
| 04_7 | Nutrition: Hydration | 2-3 liters of water per day | food | behavior | 8.0 | daily | self-report, wearable | B | - |
| 04_8 | Nutrition: Sugar Limit | Reduced added sugar | food | behavior | 8.5 | daily | self-report | A | - |
| 04_9 | Nutrition: Alcohol Limit | Minimize or avoid alcohol | food | behavior | 9.0 | weekly | self-report, wearable | A | whoop.com; PMID: 30644556 |
| 04_10 | Nutrition: Caffeine | Caffeine control (up to 400 mg/day) | food | behavior | 7.0 | daily | self-report, wearable | B | - |
| 04_11 | Nutrition: Micronutrients | Multivitamins and micronutrients | food | supplement | 6.5 | daily | lab, self-report | C | - |
| 04_12 | Habits: Water Quality | High-quality drinking water | food | behavior | 7.5 | daily | self-report | B | - |
| **05_SOCIAL** |
| 05_1 | Stress: Social Connections | Close relationships and social contacts | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| 05_2 | Habits: Family Time | Quality time with loved ones | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| 05_3 | Habits: Volunteering | Helping others for purpose | social | behavior | 8.0 | weekly | self-report | B | - |
| 05_4 | Habits: Sex | Regular sexual activity | social | behavior | 8.0 | weekly | self-report | B | - |
| **06_ENVIRONMENTAL** |
| 06_1 | Stress: Nature | Time in nature for cortisol reduction | environmental | behavior | 7.5 | weekly | self-report | B | - |
| 06_2 | Habits: Toxin Avoidance | Minimize toxin exposure | environmental | behavior | 8.5 | daily | self-report | B | - |
| 06_3 | Habits: Clean Air | Air purifiers | environmental | device | 7.5 | daily | device | C | - |
| **07_MEDICAL** |
| 07_1 | Medicine: Regular Checkup | Annual medical examinations | medical | diagnostic | 9.0 | yearly | lab, medical | A | CDC; whoop.com/advanced-labs |
| 07_2 | Medicine: Screening | Preventive screenings (BP, cholesterol, glucose) | medical | diagnostic | 9.0 | yearly | lab, device | A | AHA |
| 07_3 | Medicine: Vaccination | Timely vaccination | medical | medical | 9.0 | yearly | medical | A | WHO |
| 07_4 | Medicine: Dental | Regular dental visits | medical | diagnostic | 8.0 | yearly | medical | B | - |
| 07_5 | Medicine: Ophthalmology | Vision check | medical | diagnostic | 7.5 | yearly | medical | B | - |
| 07_6 | Medicine: Dermatology | Skin check for lesions | medical | diagnostic | 8.0 | yearly | medical | B | - |
| 07_7 | Medicine: Mental Health | Work with therapist/psychologist | mental | medical | 9.0 | weekly | self-report | A | - |
| 07_8 | Medicine: Genetic Testing | Genetic tests for personalization | medical | diagnostic | 7.5 | once | lab | B | - |
| 07_9 | Medicine: Biohacking | Data-driven personalized interventions | medical | medical | 7.0 | monthly | lab, device | C | - |
| **08_DEVICES** |
| 08_1 | Devices: HRV Monitoring | Heart rate variability tracking | physical | device | 8.5 | daily | wearable | B | whoop.com; ouraring.com |
| 08_2 | Devices: SpO2 Monitoring | Blood oxygen level tracking | physical | device | 7.5 | daily | wearable | B | whoop.com |
| 08_3 | Devices: Body Temperature | Basal body temperature tracking | physical | device | 7.0 | daily | wearable | B | ouraring.com |
| 08_4 | Devices: Sleep Quality | Sleep quality and stages monitoring | sleep | device | 9.0 | daily | wearable | A | whoop.com; ouraring.com |
| 08_5 | Devices: Activity Tracker | Steps, calories, workout tracking | physical | device | 8.0 | daily | wearable | B | fitbit.com; garmin.com |
| 08_6 | Devices: ECG | Electrocardiogram for arrhythmia detection | medical | device | 9.0 | on-demand | device | A | whoop.com/mg |
| 08_7 | Devices: BP Monitor | Blood pressure measurement | medical | device | 9.0 | daily | device | A | whoop.com/mg |
| 08_8 | Devices: Glucose Meter | Blood glucose monitoring | medical | device | 8.5 | daily | device, lab | A | - |
| **09_LAB** |
| 09_1 | Lab: Lipid Profile | Cholesterol, HDL, LDL, triglycerides | medical | lab | 9.0 | yearly | lab | A | questdiagnostics.com |
| 09_2 | Lab: Inflammation Markers | C-reactive protein (CRP), IL-6 | medical | lab | 8.5 | yearly | lab | A | questdiagnostics.com |
| 09_3 | Lab: Hormones | Testosterone, estrogen, cortisol, DHEA | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| 09_4 | Lab: Vitamin D | Vitamin D level | medical | lab | 8.0 | yearly | lab | A | - |
| 09_5 | Lab: HbA1c | Glycated hemoglobin | medical | lab | 9.0 | yearly | lab | A | - |
| 09_6 | Lab: Thyroid | TSH, T4, T3 | medical | lab | 8.5 | yearly | lab | A | - |
| 09_7 | Lab: Nutritional Status | Iron, ferritin, B12, folate | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| 09_8 | Lab: Oxidative Stress | Oxidative stress markers | medical | lab | 7.5 | yearly | lab | C | - |
| 09_9 | Lab: Epigenetic Age | Biological age by methylation | medical | lab | 8.0 | yearly | lab | B | - |
| 09_10 | Lab: Microbiome | Gut microbiome analysis | medical | lab | 8.0 | once | lab | B | - |
| **10_BIOHACKING** |
| 10_1 | Biohacking: NAD+ | NAD+ precursors (NMN, NR) | medicine | supplement | 8.0 | daily | self-report, lab | B | - |
| 10_2 | Biohacking: Senolytics | Senolytic drugs | medicine | medical | 8.5 | monthly | lab | C | - |
| 10_3 | Biohacking: Metformin | Metformin for longevity | medicine | medical | 8.0 | daily | lab, medical | B | - |
| 10_4 | Biohacking: Rapamycin | Rapamycin (off-label) | medicine | medical | 8.5 | weekly | lab, medical | C | - |
| 10_5 | Biohacking: Ketosis | Ketosis maintenance | food | behavior | 7.5 | daily | device, self-report | B | - |
| 10_6 | Biohacking: Red Light | Red light therapy (PBM) | physical | device | 7.0 | daily | self-report | C | - |
| 10_7 | Biohacking: Sauna | Regular sauna visits | physical | behavior | 8.0 | weekly | self-report, wearable | B | - |
| 10_8 | Biohacking: Hyperbaric O2 | Hyperbaric oxygen therapy | medical | medical | 7.5 | monthly | self-report | C | - |
| 10_9 | Biohacking: Testosterone | HRT (hormone replacement therapy) | medical | medical | 8.5 | monthly | lab, medical | B | - |
| 10_10 | Biohacking: Hypoxic Training | Low oxygen training | physical | behavior | 7.0 | weekly | device | C | - |
| **11_HABITS** |
| 11_1 | Habits: Early Rise | Early rise (before 7 AM) | mental | behavior | 7.5 | daily | wearable | C | - |
| 11_2 | Habits: Morning Routine | Structured morning routine | mental | behavior | 8.0 | daily | self-report | B | whoop.com |
| 11_3 | Habits: Planning | Weekly planning and reflection | mental | behavior | 7.5 | weekly | self-report | B | - |
| 11_4 | Habits: Time Management | Pomodoro, time-blocking | mental | behavior | 7.0 | daily | self-report | C | - |

---

## References

### Wearable & Health Ecosystems

| Ecosystem | URL | Key Features |
|------------|-----|-------------|
| **Whoop** | whoop.com | HRV, Recovery, Strain tracking |
| **Oura Ring** | ouraring.com | Sleep stages, Temperature, SpO2 |
| **Fitbit** | fitbit.com | Steps, Activity, Sleep |
| **Garmin** | garmin.com | Training load, VO2 max |
| **Apple Health** | apple.com/health | Integrated health data |
| **Samsung Health** | samsung.com/health | Health ecosystem |
| **Withings** | withings.com | Smart scales, BP monitors |
| **Biostrapp** | biostrapp.com | Continuous glucose monitoring |
| **Dexcom** | dexcom.com | CGM glucose monitoring |
| **Levels** | levels.com | Continuous glucose monitoring |
| **Nutrisense** | nutrisense.io | CGM & nutrition |
| **Joovv** | joovv.com | Red light therapy |
| **SaunaSpace** | saunaspace.com | Home sauna |
| **Rise** | therising.com | HbA1c tracking |

### Whoop Ecosystem
- https://www.whoop.com
- https://whoop.com/life
- https://whoop.com/advlabs

### Oura Ring
- https://ouraring.com

### PubMed (PMID)
- PMID: 31735704 — Sleep and circadian rhythms
- PMID: 29631804 — Exercise and cardiovascular health
- PMID: 29135908 — Calorie restriction and longevity
- PMID: 28715126 — Social connections and health
- PMID: 24795612 — Meditation and stress
- PMID: 28615992 — Strength training

### Additional
- https://sleepfoundation.org
- https://www.cdc.gov
- https://www.heart.org
- https://www.who.int
- https://www.questdiagnostics.com

---

*Document Version: 1.1*  
*Last Updated: 2025*  
*Total Interventions: 93*