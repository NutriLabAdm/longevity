# INTERVENTION_DB — Interventions Database for Digital Twin

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

| name | code_id | description | category | type | impact_power | regularity | data_source | evidence_level | sources |
|------|---------|-------------|----------|------|--------------|------------|-------------|-----------------|---------|
| **Sleep: Bedtime** | INT_001 | Fixed bedtime for circadian rhythm stabilization | sleep | behavior | 9.0 | daily | self-report, wearable | A | PMID: 31735704; whoop.com |
| **Sleep: Blue Light Limit** | INT_002 | Screen avoidance 1-2 hours before bed for melatonin | sleep | behavior | 8.5 | daily | self-report, wearable | A | PMID: 32852159; nature.com |
| **Sleep: Cool Temperature** | INT_003 | Bedroom temperature 18-21°C for optimal sleep | sleep | behavior | 7.5 | daily | wearable, device | B | PMID: 29621487 |
| **Sleep: Dark Room** | INT_004 | Complete darkness for sleep quality | sleep | behavior | 7.0 | daily | self-report | B | sleepfoundation.org |
| **Training: HIIT** | INT_005 | High-intensity interval training for cardio | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804; whoop.com |
| **Training: Strength** | INT_006 | Regular strength training for muscle mass | physical | behavior | 8.5 | weekly | wearable, device | A | PMID: 28615992 |
| **Training: Aerobic** | INT_007 | Running, swimming, cycling | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804 |
| **Training: Stretching/Yoga** | INT_008 | Flexibility and mobility | physical | behavior | 7.0 | weekly | self-report | B | PMID: 28715760 |
| **Training: Walking** | INT_009 | Daily walks for activity and HRV | physical | behavior | 7.5 | daily | wearable | B | whoop.com |
| **Recovery: Nap** | INT_010 | Short nap (20-30 min) for recovery | sleep | behavior | 8.0 | on-demand | wearable | B | PMID: 24795612 |
| **Recovery: Meditation** | INT_011 | Meditation and mindfulness for stress reduction | mental | behavior | 8.5 | daily | self-report, wearable | A | PMID: 24795612; ouraring.com |
| **Recovery: Breathing** | INT_012 | Deep breathing, box breathing for parasympathetic activation | mental | behavior | 8.0 | daily | wearable | B | PMID: 29165047 |
| **Recovery: Massage** | INT_013 | Massage for muscle recovery | physical | behavior | 6.5 | weekly | self-report | C | - |
| **Nutrition: Calorie Limit** | INT_014 | Moderate calorie restriction for longevity | food | behavior | 8.5 | daily | self-report, lab | A | PMID: 29135908 |
| **Nutrition: Intermittent Fasting** | INT_015 | 16:8 or 5:2 fasting protocols | food | behavior | 8.0 | daily | self-report, wearable | B | PMID: 29135908 |
| **Nutrition: Protein** | INT_016 | Adequate protein intake (1.6-2.2 g/kg) | food | behavior | 8.0 | daily | self-report | A | ISSN; nutrition.org |
| **Nutrition: Omega-3** | INT_017 | Omega-3 fatty acids (EPA/DHA) | food | supplement | 8.5 | daily | lab, self-report | A | PMID: 24860198 |
| **Nutrition: Antioxidants** | INT_018 | Antioxidant-rich foods (berries, greens) | food | behavior | 7.5 | daily | self-report | B | - |
| **Nutrition: Fiber** | INT_019 | Adequate fiber intake (25-35 g/day) | food | behavior | 8.0 | daily | self-report | A | - |
| **Nutrition: Hydration** | INT_020 | 2-3 liters of water per day | food | behavior | 8.0 | daily | self-report, wearable | B | - |
| **Nutrition: Sugar Limit** | INT_021 | Reduced added sugar | food | behavior | 8.5 | daily | self-report | A | - |
| **Nutrition: Alcohol Limit** | INT_022 | Minimize or avoid alcohol | food | behavior | 9.0 | weekly | self-report, wearable | A | whoop.com; PMID: 30644556 |
| **Nutrition: Caffeine** | INT_023 | Caffeine control (up to 400 mg/day) | food | behavior | 7.0 | daily | self-report, wearable | B | - |
| **Nutrition: Micronutrients** | INT_024 | Multivitamins and micronutrients | food | supplement | 6.5 | daily | lab, self-report | C | - |
| **Stress: Cold Shower** | INT_025 | Cryotherapy, cold shower for parasympathetic activation | physical | behavior | 7.0 | daily | self-report | C | - |
| **Stress: Journaling** | INT_026 | Reflection and journaling for emotional regulation | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| **Stress: Social Connections** | INT_027 | Close relationships and social contacts | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| **Stress: Nature** | INT_028 | Time in nature for cortisol reduction | environmental | behavior | 7.5 | weekly | self-report | B | - |
| **Stress: Digital Detox** | INT_029 | Technology breaks for mental health | mental | behavior | 7.0 | daily | self-report | C | - |
| **Mental: Learning** | INT_030 | Continuous learning, cognitive training | mental | behavior | 8.0 | daily | self-report | B | - |
| **Mental: Goals** | INT_031 | Setting and achieving personal goals | mental | behavior | 8.0 | weekly | self-report | B | - |
| **Mental: Gratitude** | INT_032 | Daily gratitude practice | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| **Mental: Creativity** | INT_033 | Creative activities (music, drawing) | mental | behavior | 7.0 | weekly | self-report | C | - |
| **Medicine: Regular Checkup** | INT_034 | Annual medical examinations | medical | diagnostic | 9.0 | yearly | lab, medical | A | CDC; whoop.com/advanced-labs |
| **Medicine: Screening** | INT_035 | Preventive screenings (BP, cholesterol, glucose) | medical | diagnostic | 9.0 | yearly | lab, device | A | AHA |
| **Medicine: Vaccination** | INT_036 | Timely vaccination | medical | medical | 9.0 | yearly | medical | A | WHO |
| **Medicine: Dental** | INT_037 | Regular dental visits | medical | diagnostic | 8.0 | yearly | medical | B | - |
| **Medicine: Ophthalmology** | INT_038 | Vision check | medical | diagnostic | 7.5 | yearly | medical | B | - |
| **Medicine: Dermatology** | INT_039 | Skin check for lesions | medical | diagnostic | 8.0 | yearly | medical | B | - |
| **Medicine: Mental Health** | INT_040 | Work with therapist/psychologist | mental | medical | 9.0 | weekly | self-report | A | - |
| **Medicine: Genetic Testing** | INT_041 | Genetic tests for personalization | medical | diagnostic | 7.5 | once | lab | B | - |
| **Medicine: Biohacking** | INT_042 | Data-driven personalized interventions | medical | medical | 7.0 | monthly | lab, device | C | - |
| **Devices: HRV Monitoring** | INT_043 | Heart rate variability tracking | physical | device | 8.5 | daily | wearable | B | whoop.com; ouraring.com |
| **Devices: SpO2 Monitoring** | INT_044 | Blood oxygen level tracking | physical | device | 7.5 | daily | wearable | B | whoop.com |
| **Devices: Body Temperature** | INT_045 | Basal body temperature tracking | physical | device | 7.0 | daily | wearable | B | ouraring.com |
| **Devices: Sleep Quality** | INT_046 | Sleep quality and stages monitoring | sleep | device | 9.0 | daily | wearable | A | whoop.com; ouraring.com |
| **Devices: Activity Tracker** | INT_047 | Steps, calories, workout tracking | physical | device | 8.0 | daily | wearable | B | fitbit.com; garmin.com |
| **Devices: ECG** | INT_048 | Electrocardiogram for arrhythmia detection | medical | device | 9.0 | on-demand | device | A | whoop.com/mg |
| **Devices: BP Monitor** | INT_049 | Blood pressure measurement | medical | device | 9.0 | daily | device | A | whoop.com/mg |
| **Devices: Glucose Meter** | INT_050 | Blood glucose monitoring | medical | device | 8.5 | daily | device, lab | A | - |
| **Lab: Lipid Profile** | INT_051 | Cholesterol, HDL, LDL, triglycerides | medical | lab | 9.0 | yearly | lab | A | questdiagnostics.com |
| **Lab: Inflammation Markers** | INT_052 | C-reactive protein (CRP), IL-6 | medical | lab | 8.5 | yearly | lab | A | questdiagnostics.com |
| **Lab: Hormones** | INT_053 | Testosterone, estrogen, cortisol, DHEA | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| **Lab: Vitamin D** | INT_054 | Vitamin D level | medical | lab | 8.0 | yearly | lab | A | - |
| **Lab: HbA1c** | INT_055 | Glycated hemoglobin | medical | lab | 9.0 | yearly | lab | A | - |
| **Lab: Thyroid** | INT_056 | TSH, T4, T3 | medical | lab | 8.5 | yearly | lab | A | - |
| **Lab: Nutritional Status** | INT_057 | Iron, ferritin, B12, folate | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| **Lab: Oxidative Stress** | INT_058 | Oxidative stress markers | medical | lab | 7.5 | yearly | lab | C | - |
| **Lab: Epigenetic Age** | INT_059 | Biological age by methylation | medical | lab | 8.0 | yearly | lab | B | - |
| **Lab: Microbiome** | INT_060 | Gut microbiome analysis | medical | lab | 8.0 | once | lab | B | - |
| **Biohacking: NAD+** | INT_061 | NAD+ precursors (NMN, NR) | medicine | supplement | 8.0 | daily | self-report, lab | B | - |
| **Biohacking: Senolytics** | INT_062 | Senolytic drugs | medicine | medical | 8.5 | monthly | lab | C | - |
| **Biohacking: Metformin** | INT_063 | Metformin for longevity | medicine | medical | 8.0 | daily | lab, medical | B | - |
| **Biohacking: Rapamycin** | INT_064 | Rapamycin (off-label) | medicine | medical | 8.5 | weekly | lab, medical | C | - |
| **Biohacking: Ketosis** | INT_065 | Ketosis maintenance | food | behavior | 7.5 | daily | device, self-report | B | - |
| **Biohacking: Red Light** | INT_066 | Red light therapy (PBM) | physical | device | 7.0 | daily | self-report | C | - |
| **Biohacking: Sauna** | INT_067 | Regular sauna visits | physical | behavior | 8.0 | weekly | self-report, wearable | B | - |
| **Biohacking: Hyperbaric O2** | INT_068 | Hyperbaric oxygen therapy | medical | medical | 7.5 | monthly | self-report | C | - |
| **Biohacking: Testosterone** | INT_069 | HRT (hormone replacement therapy) | medical | medical | 8.5 | monthly | lab, medical | B | - |
| **Biohacking: Hypoxic Training** | INT_070 | Low oxygen training | physical | behavior | 7.0 | weekly | device | C | - |
| **Habits: Early Rise** | INT_071 | Early rise (before 7 AM) | mental | behavior | 7.5 | daily | wearable | C | - |
| **Habits: Morning Routine** | INT_072 | Structured morning routine | mental | behavior | 8.0 | daily | self-report | B | whoop.com |
| **Habits: Planning** | INT_073 | Weekly planning and reflection | mental | behavior | 7.5 | weekly | self-report | B | - |
| **Habits: Time Management** | INT_074 | Pomodoro, time-blocking | mental | behavior | 7.0 | daily | self-report | C | - |
| **Habits: Sleep Ritual** | INT_075 | Evening sleep ritual | sleep | behavior | 8.5 | daily | self-report, wearable | B | whoop.com; sleepfoundation.org |
| **Habits: Contrast Shower** | INT_076 | Hot/cold water alternation | physical | behavior | 7.5 | daily | self-report | C | - |
| **Habits: Teeth Brushing** | INT_077 | Oral hygiene 2 times/day | physical | behavior | 9.0 | daily | self-report | A | - |
| **Habits: Sun Protection** | INT_078 | SPF and UV protection | physical | behavior | 9.0 | daily | self-report | A | - |
| **Habits: Posture** | INT_079 | Posture control during day | physical | behavior | 7.0 | daily | self-report | C | - |
| **Habits: Movement Breaks** | INT_080 | Hourly 5-minute break | physical | behavior | 7.5 | daily | wearable | B | - |
| **Habits: Deep Breathing** | INT_081 | Breathing exercises 2x/day | mental | behavior | 8.0 | daily | wearable | B | whoop.com |
| **Habits: Bibliotherapy** | INT_082 | Reading for cognitive health | mental | behavior | 7.0 | daily | self-report | C | - |
| **Habits: Music** | INT_083 | Music for relaxation | mental | behavior | 6.5 | daily | self-report | C | - |
| **Habits: Family Time** | INT_084 | Quality time with loved ones | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| **Habits: Volunteering** | INT_085 | Helping others for purpose | social | behavior | 8.0 | weekly | self-report | B | - |
| **Habits: Acceptance** | INT_086 | Acceptance practices | mental | behavior | 8.0 | daily | self-report | B | - |
| **Habits: Toxin Avoidance** | INT_087 | Minimize toxin exposure | environmental | behavior | 8.5 | daily | self-report | B | - |
| **Habits: Clean Air** | INT_088 | Air purifiers | environmental | device | 7.5 | daily | device | C | - |
| **Habits: Water Quality** | INT_089 | High-quality drinking water | food | behavior | 7.5 | daily | self-report | B | - |
| **Habits: Ergonomics** | INT_090 | Proper workspace setup | physical | behavior | 7.0 | daily | self-report | B | - |
| **Habits: Safety** | INT_091 | Seatbelts, helmets, protection | physical | behavior | 10.0 | daily | self-report | A | CDC |
| **Habits: Sex** | INT_092 | Regular sexual activity | social | behavior | 8.0 | weekly | self-report | B | - |
| **Habits: Laughter** | INT_093 | Regular laughter and positivity | mental | behavior | 7.5 | daily | self-report | C | - |

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