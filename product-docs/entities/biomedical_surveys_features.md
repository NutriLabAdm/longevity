# Biomedical Lifestyle Genetic Interviews — Feature Database

**Total Interviews:** 20  
**Date Range:** 2025-03-15 to 2025-03-24  
**Locations:** Moscow, Saint Petersburg, Ekaterinburg, Novosibirsk, Kazan, Sochi, Krasnodar, Samara, Voronezh, Krasnoyarsk, Tyumen, Perm, Nizhny Novgorod, Rostov-on-Don, Ufa, Saratov, Volgograd, Chelyabinsk, Irkutsk, Kaliningrad

---

## Summary

### By Sections

| Section | Fields Count | Description |
|---------|------------|-------------|
| **Demographics** | 5 | Basic demographics |
| **Biomedical Markers** | 22 | Lab and clinical markers |
| **Lifestyle Factors** | 12 | Lifestyle factors |
| **Genetic Markers** | 5 | Genetic variants |
| **Family History** | 4 | Family anamnesis |
| **Medical History** | 4 | Medical history |
| **Total Features** | **52** | Total features |

### By Data Types

| Type | Count | Examples |
|-----|--------|---------|
| **Numerical** | 28 | Age, BP, HR, Glucose, Cholesterol, BMI |
| **Categorical** | 16 | Gender, Ethnicity, Smoking Status, Diet Type |
| **Boolean** | 5 | Lactase Persistence, BRCA1/2 |
| **Text** | 3 | Additional Notes |

### By Biomarker Categories

| Category | Count | Examples |
|-----------|--------|---------|
| **Cardiovascular** | 6 | BP, HR, Cholesterol, Triglycerides |
| **Metabolic** | 8 | Glucose, HbA1c, Insulin, BMI |
| **Hematological** | 6 | Hemoglobin, WBC, Platelets, Hematocrit |
| **Hepatic** | 4 | ALT, AST, Bilirubin |
| **Renal** | 2 | Creatinine, BUN |
| **Thyroid** | 2 | TSH, Free T4 |
| **Nutritional** | 4 | Vitamin D, Iron, Ferritin, B12 |
| **Anthropometric** | 3 | Height, Weight, Waist |

### Age Distribution

| Group | Count | Share |
|--------|--------|------|
| **20-30** | 4 | 20% |
| **31-40** | 5 | 25% |
| **41-50** | 5 | 25% |
| **51-60** | 4 | 20% |
| **61+** | 2 | 10% |

### Gender Distribution

| Gender | Count | Share |
|-----|--------|------|
| **Female** | 10 | 50% |
| **Male** | 10 | 50% |

### Ethnicity Distribution

| Ethnicity | Count | Share |
|-----------|--------|------|
| **European** | 18 | 90% |
| **Asian** | 2 | 10% |

### Smoking Status

| Status | Count |
|--------|--------|
| **Non-smoker** | 11 |
| **Former smoker** | 5 |
| **Current smoker** | 4 |

### Physical Activity Level

| Level | Count |
|---------|--------|
| **Low (0-1/week)** | 4 |
| **Moderate (2-3/week)** | 9 |
| **High (4+/week)** | 7 |

---

## Feature Index

### Demographics (01_DEMO_*)

| Mnemonic | Full Name | Type | Units |
|---------|----------|------|-------|
| 01_1_DEMO_AGE | Age | Numerical | years |
| 01_2_DEMO_GENDER | Gender | Categorical | M/F |
| 01_3_DEMO_HEIGHT | Height | Numerical | cm |
| 01_4_DEMO_WEIGHT | Weight | Numerical | kg |
| 01_5_DEMO_ETHNICITY | Ethnicity | Categorical | text |

### Biomedical Markers (02_BIO_*)

| Mnemonic | Full Name | Type | Units |
|---------|----------|------|-------|
| 02_1_BIO_BP_SYST | Blood Pressure Systolic | Numerical | mmHg |
| 02_2_BIO_BP_DIAST | Blood Pressure Diastolic | Numerical | mmHg |
| 02_3_BIO_HR | Heart Rate | Numerical | bpm |
| 02_4_BIO_GLUCOSE | Blood Glucose | Numerical | mg/dL |
| 02_5_BIO_TCHOL | Total Cholesterol | Numerical | mg/dL |
| 02_6_BIO_HDL | HDL Cholesterol | Numerical | mg/dL |
| 02_7_BIO_LDL | LDL Cholesterol | Numerical | mg/dL |
| 02_8_BIO_TG | Triglycerides | Numerical | mg/dL |
| 02_9_BIO_HGB | Hemoglobin | Numerical | g/dL |
| 02_10_BIO_WBC | White Blood Cell Count | Numerical | 10^3/μL |
| 02_11_BIO_PLAT | Platelets | Numerical | 10^3/μL |
| 02_12_BIO_CREAT | Creatinine | Numerical | mg/dL |
| 02_13_BIO_ALT | ALT | Numerical | U/L |
| 02_14_BIO_AST | AST | Numerical | U/L |
| 02_15_BIO_TSH | TSH | Numerical | mIU/L |
| 02_16_BIO_VITD | Vitamin D | Numerical | ng/mL |
| 02_17_BIO_IRON | Iron | Numerical | μg/dL |
| 02_18_BIO_FERRITIN | Ferritin | Numerical | ng/mL |
| 02_19_BIO_BMI | BMI | Numerical | kg/m² |
| 02_20_BIO_WAIST | Waist Circumference | Numerical | cm |
| 02_21_BIO_HCT | Hematocrit | Numerical | % |
| 02_22_BIO_MCV | MCV | Numerical | fL |

### Lifestyle Factors (03_LIFE_*)

| Mnemonic | Full Name | Type | Units |
|---------|----------|------|-------|
| 03_1_LIFE_SMOKE | Smoking Status | Categorical | text |
| 03_2_LIFE_ALCOHOL | Alcohol Consumption | Categorical | text |
| 03_3_LIFE_EXERC_FREQ | Exercise Frequency | Categorical | text |
| 03_4_LIFE_EXERC_TYPE | Exercise Type | Categorical | text |
| 03_5_LIFE_SLEEP | Sleep Duration | Categorical | hours |
| 03_6_LIFE_STRESS | Stress Level | Numerical | 1-10 |
| 03_7_LIFE_DIET | Diet Type | Categorical | text |
| 03_8_LIFE_COFFEE | Coffee Consumption | Numerical | cups/day |
| 03_9_LIFE_WATER | Water Intake | Numerical | L/day |
| 03_10_LIFE_SCREEN | Screen Time | Numerical | hours/day |
| 03_11_LIFE_WORK | Work Schedule | Categorical | text |

### Genetic Markers (04_GENE_*)

| Mnemonic | Full Name | Type | Values |
|---------|----------|------|--------|
| 04_1_GENE_APOE | APOE Genotype | Categorical | ε2/ε2, ε2/ε3, ε3/ε3, ε3/ε4, ε4/ε4 |
| 04_2_GENE_MTHFR | MTHFR Variant | Categorical | No variant, C677T (heterozygous), C677T (homozygous), A1298C (heterozygous) |
| 04_3_GENE_LACTASE | Lactase Persistence | Boolean | Yes/No |
| 04_4_GENE_BRCA | BRCA1/2 | Boolean | Negative/Positive/Not tested |
| 04_5_GENE_FVL | Factor V Leiden | Boolean | No variant/Present |

### Family History (05_FAM_*)

| Mnemonic | Full Name | Type |
|----------|----------|------|
| 05_1_FAM_CVD | Cardiovascular Disease | Categorical |
| 05_2_FAM_DM | Diabetes | Categorical |
| 05_3_FAM_CA | Cancer | Categorical |
| 05_4_FAM_HTN | Hypertension | Categorical |

### Medical History (06_MED_*)

| Mnemonic | Full Name | Type |
|----------|----------|------|
| 06_1_MED_COND | Chronic Conditions | Categorical |
| 06_2_MED_SURG | Surgeries | Categorical |
| 06_3_MED_MED | Medications | Categorical |
| 06_4_MED_ALLR | Allergies | Categorical |

---

## Quick Reference

| Prefix | Section | Description |
|---------|----------|-------------|
| 01_DEMO_ | Demographics |
| 02_BIO_ | Biomedical Markers |
| 03_LIFE_ | Lifestyle Factors |
| 04_GENE_ | Genetic Markers |
| 05_FAM_ | Family History |
| 06_MED_ | Medical History |

---

# Biomedical Lifestyle Genetic Interview #1

**Interview ID:** MED001  
**Date:** 2025-03-15  
**Location:** Moscow Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 34  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 168 cm  
- **01_4_DEMO_WEIGHT:** 62 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 118 mmHg  
- **02_2_BIO_BP_DIAST:** 76 mmHg  
- **02_3_BIO_HR:** 72 bpm  
- **02_4_BIO_GLUCOSE:** 92 mg/dL  
- **02_5_BIO_TCHOL:** 195 mg/dL  
- **02_6_BIO_HDL:** 58 mg/dL  
- **02_7_BIO_LDL:** 118 mg/dL  
- **02_8_BIO_TG:** 95 mg/dL  
- **02_9_BIO_HGB:** 13.5 g/dL  
- **02_10_BIO_WBC:** 6.8 10^3/μL  
- **02_11_BIO_PLAT:** 245 10^3/μL  
- **02_12_BIO_CREAT:** 0.85 mg/dL  
- **02_13_BIO_ALT:** 22 U/L  
- **02_14_BIO_AST:** 24 U/L  
- **02_15_BIO_TSH:** 2.1 mIU/L  
- **02_16_BIO_VITD:** 28 ng/mL  
- **02_17_BIO_IRON:** 85 μg/dL  
- **02_18_BIO_FERRITIN:** 45 ng/mL  
- **02_19_BIO_BMI:** 22.0 kg/m²  
- **02_20_BIO_WAIST:** 72 cm  
- **02_21_BIO_HCT:** 41 %  
- **02_22_BIO_MCV:** 92 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 3-4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Running, Yoga  
- **03_5_LIFE_SLEEP:** 7-8 hours  
- **03_6_LIFE_STRESS:** 6  
- **03_7_LIFE_DIET:** Balanced omnivore  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 2.0 L/day  
- **03_10_LIFE_SCREEN:** 6 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father (age 55)  
- **05_2_FAM_DM:** Maternal grandmother  
- **05_3_FAM_CA:** None reported  
- **05_4_FAM_HTN:** Mother

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** Appendectomy (age 12)  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** Penicillin

**Additional Notes:** No known allergies.

---

# Biomedical Lifestyle Genetic Interview #2

**Interview ID:** MED002  
**Date:** 2025-03-15  
**Location:** Saint Petersburg Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 52  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 180 cm  
- **01_4_DEMO_WEIGHT:** 92 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 138 mmHg  
- **02_2_BIO_BP_DIAST:** 88 mmHg  
- **02_3_BIO_HR:** 78 bpm  
- **02_4_BIO_GLUCOSE:** 108 mg/dL  
- **02_5_BIO_TCHOL:** 245 mg/dL  
- **02_6_BIO_HDL:** 42 mg/dL  
- **02_7_BIO_LDL:** 165 mg/dL  
- **02_8_BIO_TG:** 190 mg/dL  
- **02_9_BIO_HGB:** 15.2 g/dL  
- **02_10_BIO_WBC:** 7.2 10^3/μL  
- **02_11_BIO_PLAT:** 230 10^3/μL  
- **02_12_BIO_CREAT:** 1.05 mg/dL  
- **02_13_BIO_ALT:** 35 U/L  
- **02_14_BIO_AST:** 30 U/L  
- **02_15_BIO_TSH:** 2.8 mIU/L  
- **02_16_BIO_VITD:** 18 ng/mL  
- **02_17_BIO_IRON:** 95 μg/dL  
- **02_18_BIO_FERRITIN:** 120 ng/mL  
- **02_19_BIO_BMI:** 28.4 kg/m²  
- **02_20_BIO_WAIST:** 98 cm  
- **02_21_BIO_HCT:** 46 %  
- **02_22_BIO_MCV:** 88 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Former smoker (quit 5 years ago)  
- **03_2_LIFE_ALCOHOL:** Moderate  
- **03_3_LIFE_EXERC_FREQ:** 1-2 times/week  
- **03_4_LIFE_EXERC_TYPE:** Walking  
- **03_5_LIFE_SLEEP:** 6 hours  
- **03_6_LIFE_STRESS:** 7  
- **03_7_LIFE_DIET:** Mixed diet, high meat consumption  
- **03_8_LIFE_COFFEE:** 3 cups/day  
- **03_9_LIFE_WATER:** 1.5 L/day  
- **03_10_LIFE_SCREEN:** 8 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε4  
- **04_2_GENE_MTHFR:** C677T (homozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father, Mother  
- **05_2_FAM_DM:** Father  
- **05_3_FAM_CA:** Grandmother (breast)  
- **05_4_FAM_HTN:** Both parents

**Medical History:**  
- **06_1_MED_COND:** Hypertension, Hypercholesterolemia  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** Statins, ACE inhibitors  
- **06_4_MED_ALLR:** None

**Additional Notes:** Reports occasional chest discomfort.

---

# Biomedical Lifestyle Genetic Interview #3

**Interview ID:** MED003  
**Date:** 2025-03-16  
**Location:** Ekaterinburg Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 28  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 165 cm  
- **01_4_DEMO_WEIGHT:** 55 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 105 mmHg  
- **02_2_BIO_BP_DIAST:** 68 mmHg  
- **02_3_BIO_HR:** 68 bpm  
- **02_4_BIO_GLUCOSE:** 85 mg/dL  
- **02_5_BIO_TCHOL:** 175 mg/dL  
- **02_6_BIO_HDL:** 65 mg/dL  
- **02_7_BIO_LDL:** 98 mg/dL  
- **02_8_BIO_TG:** 60 mg/dL  
- **02_9_BIO_HGB:** 12.8 g/dL  
- **02_10_BIO_WBC:** 6.2 10^3/μL  
- **02_11_BIO_PLAT:** 260 10^3/μL  
- **02_12_BIO_CREAT:** 0.72 mg/dL  
- **02_13_BIO_ALT:** 18 U/L  
- **02_14_BIO_AST:** 20 U/L  
- **02_15_BIO_TSH:** 1.8 mIU/L  
- **02_16_BIO_VITD:** 35 ng/mL  
- **02_17_BIO_IRON:** 70 μg/dL  
- **02_18_BIO_FERRITIN:** 28 ng/mL  
- **02_19_BIO_BMI:** 20.2 kg/m²  
- **02_20_BIO_WAIST:** 65 cm  
- **02_21_BIO_HCT:** 38 %  
- **02_22_BIO_MCV:** 90 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 5-6 times/week  
- **03_4_LIFE_EXERC_TYPE:** HIIT, Gym  
- **03_5_LIFE_SLEEP:** 8 hours  
- **03_6_LIFE_STRESS:** 4  
- **03_7_LIFE_DIET:** Vegetarian  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.5 L/day  
- **03_10_LIFE_SCREEN:** 4 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** Vitamin D supplements  
- **06_4_MED_ALLR:** None

**Additional Notes:** Iron deficiency noted - considering supplementation.

---

# Biomedical Lifestyle Genetic Interview #4

**Interview ID:** MED004  
**Date:** 2025-03-16  
**Location:** Novosibirsk Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 45  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 175 cm  
- **01_4_DEMO_WEIGHT:** 88 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 130 mmHg  
- **02_2_BIO_BP_DIAST:** 82 mmHg  
- **02_3_BIO_HR:** 76 bpm  
- **02_4_BIO_GLUCOSE:** 102 mg/dL  
- **02_5_BIO_TCHOL:** 220 mg/dL  
- **02_6_BIO_HDL:** 45 mg/dL  
- **02_7_BIO_LDL:** 148 mg/dL  
- **02_8_BIO_TG:** 135 mg/dL  
- **02_9_BIO_HGB:** 14.8 g/dL  
- **02_10_BIO_WBC:** 6.9 10^3/μL  
- **02_11_BIO_PLAT:** 235 10^3/μL  
- **02_12_BIO_CREAT:** 0.98 mg/dL  
- **02_13_BIO_ALT:** 28 U/L  
- **02_14_BIO_AST:** 26 U/L  
- **02_15_BIO_TSH:** 2.4 mIU/L  
- **02_16_BIO_VITD:** 22 ng/mL  
- **02_17_BIO_IRON:** 90 μg/dL  
- **02_18_BIO_FERRITIN:** 85 ng/mL  
- **02_19_BIO_BMI:** 28.7 kg/m²  
- **02_20_BIO_WAIST:** 95 cm  
- **02_21_BIO_HCT:** 44 %  
- **02_22_BIO_MCV:** 86 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Current smoker (10/day)  
- **03_2_LIFE_ALCOHOL:** Moderate-heavy  
- **03_3_LIFE_EXERC_FREQ:** Once a week  
- **03_4_LIFE_EXERC_TYPE:** None regular  
- **03_5_LIFE_SLEEP:** 5-6 hours  
- **03_6_LIFE_STRESS:** 8  
- **03_7_LIFE_DIET:** Omnivore, processed foods  
- **03_8_LIFE_COFFEE:** 4 cups/day  
- **03_9_LIFE_WATER:** 1.2 L/day  
- **03_10_LIFE_SCREEN:** 7 hours/day  
- **03_11_LIFE_WORK:** Shift work

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father (MI, age 50)  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** Aunt (lung)  
- **05_4_FAM_HTN:** Father

**Medical History:**  
- **06_1_MED_COND:** Pre-hypertension  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** High risk lifestyle factors. Recommended lifestyle modifications.

---

# Biomedical Lifestyle Genetic Interview #5

**Interview ID:** MED005  
**Date:** 2025-03-17  
**Location:** Kazan Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 39  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 170 cm  
- **01_4_DEMO_WEIGHT:** 68 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 112 mmHg  
- **02_2_BIO_BP_DIAST:** 74 mmHg  
- **02_3_BIO_HR:** 70 bpm  
- **02_4_BIO_GLUCOSE:** 94 mg/dL  
- **02_5_BIO_TCHOL:** 188 mg/dL  
- **02_6_BIO_HDL:** 60 mg/dL  
- **02_7_BIO_LDL:** 110 mg/dL  
- **02_8_BIO_TG:** 90 mg/dL  
- **02_9_BIO_HGB:** 13.2 g/dL  
- **02_10_BIO_WBC:** 6.5 10^3/μL  
- **02_11_BIO_PLAT:** 250 10^3/μL  
- **02_12_BIO_CREAT:** 0.80 mg/dL  
- **02_13_BIO_ALT:** 20 U/L  
- **02_14_BIO_AST:** 22 U/L  
- **02_15_BIO_TSH:** 2.2 mIU/L  
- **02_16_BIO_VITD:** 32 ng/mL  
- **02_17_BIO_IRON:** 78 μg/dL  
- **02_18_BIO_FERRITIN:** 38 ng/mL  
- **02_19_BIO_BMI:** 23.5 kg/m²  
- **02_20_BIO_WAIST:** 74 cm  
- **02_21_BIO_HCT:** 40 %  
- **02_22_BIO_MCV:** 91 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Swimming, Pilates  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Mediterranean  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.2 L/day  
- **03_10_LIFE_SCREEN:** 5 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Mother (hypertension)  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** Mother

**Medical History:**  
- **06_1_MED_COND:** Mild thyroiditis (resolved)  
- **06_2_MED_SURG:** C-section (age 32)  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Generally healthy lifestyle.

---

# Biomedical Lifestyle Genetic Interview #6

**Interview ID:** MED006  
**Date:** 2025-03-17  
**Location:** Sochi Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 58  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 178 cm  
- **01_4_DEMO_WEIGHT:** 95 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 145 mmHg  
- **02_2_BIO_BP_DIAST:** 92 mmHg  
- **02_3_BIO_HR:** 82 bpm  
- **02_4_BIO_GLUCOSE:** 115 mg/dL  
- **02_5_BIO_TCHOL:** 260 mg/dL  
- **02_6_BIO_HDL:** 38 mg/dL  
- **02_7_BIO_LDL:** 180 mg/dL  
- **02_8_BIO_TG:** 210 mg/dL  
- **02_9_BIO_HGB:** 14.5 g/dL  
- **02_10_BIO_WBC:** 7.5 10^3/μL  
- **02_11_BIO_PLAT:** 225 10^3/μL  
- **02_12_BIO_CREAT:** 1.12 mg/dL  
- **02_13_BIO_ALT:** 40 U/L  
- **02_14_BIO_AST:** 35 U/L  
- **02_15_BIO_TSH:** 3.2 mIU/L  
- **02_16_BIO_VITD:** 15 ng/mL  
- **02_17_BIO_IRON:** 88 μg/dL  
- **02_18_BIO_FERRITIN:** 150 ng/mL  
- **02_19_BIO_BMI:** 30.0 kg/m²  
- **02_20_BIO_WAIST:** 102 cm  
- **02_21_BIO_HCT:** 45 %  
- **02_22_BIO_MCV:** 85 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Former smoker (quit 10 years ago)  
- **03_2_LIFE_ALCOHOL:** Moderate  
- **03_3_LIFE_EXERC_FREQ:** 2 times/week  
- **03_4_LIFE_EXERC_TYPE:** Walking, Light weights  
- **03_5_LIFE_SLEEP:** 6 hours  
- **03_6_LIFE_STRESS:** 6  
- **03_7_LIFE_DIET:** Standard omnivore  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 1.8 L/day  
- **03_10_LIFE_SCREEN:** 5 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε4/ε4  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father, Uncle  
- **05_2_FAM_DM:** Mother, Brother  
- **05_3_FAM_CA:** Father (prostate)  
- **05_4_FAM_HTN:** Both parents

**Medical History:**  
- **06_1_MED_COND:** Type 2 Diabetes, Hypertension, Hyperlipidemia  
- **06_2_MED_SURG:** Hernia repair (age 50)  
- **06_3_MED_MED:** Metformin, Statins, Beta-blockers, Aspirin  
- **06_4_MED_ALLR:** None

**Additional Notes:** Multiple cardiovascular risk factors. Family history significant for CAD.

---

# Biomedical Lifestyle Genetic Interview #7

**Interview ID:** MED007  
**Date:** 2025-03-18  
**Location:** Krasnodar Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 25  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 162 cm  
- **01_4_DEMO_WEIGHT:** 52 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 102 mmHg  
- **02_2_BIO_BP_DIAST:** 65 mmHg  
- **02_3_BIO_HR:** 66 bpm  
- **02_4_BIO_GLUCOSE:** 82 mg/dL  
- **02_5_BIO_TCHOL:** 165 mg/dL  
- **02_6_BIO_HDL:** 62 mg/dL  
- **02_7_BIO_LDL:** 88 mg/dL  
- **02_8_BIO_TG:** 75 mg/dL  
- **02_9_BIO_HGB:** 12.5 g/dL  
- **02_10_BIO_WBC:** 5.8 10^3/μL  
- **02_11_BIO_PLAT:** 270 10^3/μL  
- **02_12_BIO_CREAT:** 0.70 mg/dL  
- **02_13_BIO_ALT:** 16 U/L  
- **02_14_BIO_AST:** 18 U/L  
- **02_15_BIO_TSH:** 1.9 mIU/L  
- **02_16_BIO_VITD:** 42 ng/mL  
- **02_17_BIO_IRON:** 65 μg/dL  
- **02_18_BIO_FERRITIN:** 22 ng/mL  
- **02_19_BIO_BMI:** 19.8 kg/m²  
- **02_20_BIO_WAIST:** 62 cm  
- **02_21_BIO_HCT:** 37 %  
- **02_22_BIO_MCV:** 93 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Dance, Yoga  
- **03_5_LIFE_SLEEP:** 8 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Vegan  
- **03_8_LIFE_COFFEE:** 0 cups/day  
- **03_9_LIFE_WATER:** 2.8 L/day  
- **03_10_LIFE_SCREEN:** 3 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** B12 supplements  
- **06_4_MED_ALLR:** None

**Additional Notes:** Excellent health markers. Vegan diet well-planned.

---

# Biomedical Lifestyle Genetic Interview #8

**Interview ID:** MED008  
**Date:** 2025-03-18  
**Location:** Samara Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 47  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 182 cm  
- **01_4_DEMO_WEIGHT:** 84 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 128 mmHg  
- **02_2_BIO_BP_DIAST:** 80 mmHg  
- **02_3_BIO_HR:** 74 bpm  
- **02_4_BIO_GLUCOSE:** 98 mg/dL  
- **02_5_BIO_TCHOL:** 205 mg/dL  
- **02_6_BIO_HDL:** 48 mg/dL  
- **02_7_BIO_LDL:** 135 mg/dL  
- **02_8_BIO_TG:** 110 mg/dL  
- **02_9_BIO_HGB:** 15.0 g/dL  
- **02_10_BIO_WBC:** 6.6 10^3/μL  
- **02_11_BIO_PLAT:** 240 10^3/μL  
- **02_12_BIO_CREAT:** 0.95 mg/dL  
- **02_13_BIO_ALT:** 26 U/L  
- **02_14_BIO_AST:** 24 U/L  
- **02_15_BIO_TSH:** 2.5 mIU/L  
- **02_16_BIO_VITD:** 25 ng/mL  
- **02_17_BIO_IRON:** 92 μg/dL  
- **02_18_BIO_FERRITIN:** 75 ng/mL  
- **02_19_BIO_BMI:** 25.3 kg/m²  
- **02_20_BIO_WAIST:** 88 cm  
- **02_21_BIO_HCT:** 45 %  
- **02_22_BIO_MCV:** 87 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Daily (1-2 drinks)  
- **03_3_LIFE_EXERC_FREQ:** 2-3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Cycling  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Balanced  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 2.0 L/day  
- **03_10_LIFE_SCREEN:** 6 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** A1298C (heterozygous)  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father (stroke, age 60)  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** Father

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Father had stroke - moderate risk.

---

# Biomedical Lifestyle Genetic Interview #9

**Interview ID:** MED009  
**Date:** 2025-03-19  
**Location:** Voronezh Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 62  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 158 cm  
- **01_4_DEMO_WEIGHT:** 72 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 140 mmHg  
- **02_2_BIO_BP_DIAST:** 85 mmHg  
- **02_3_BIO_HR:** 76 bpm  
- **02_4_BIO_GLUCOSE:** 105 mg/dL  
- **02_5_BIO_TCHOL:** 235 mg/dL  
- **02_6_BIO_HDL:** 55 mg/dL  
- **02_7_BIO_LDL:** 155 mg/dL  
- **02_8_BIO_TG:** 125 mg/dL  
- **02_9_BIO_HGB:** 13.0 g/dL  
- **02_10_BIO_WBC:** 6.4 10^3/μL  
- **02_11_BIO_PLAT:** 255 10^3/μL  
- **02_12_BIO_CREAT:** 0.88 mg/dL  
- **02_13_BIO_ALT:** 24 U/L  
- **02_14_BIO_AST:** 22 U/L  
- **02_15_BIO_TSH:** 4.5 mIU/L  
- **02_16_BIO_VITD:** 20 ng/mL  
- **02_17_BIO_IRON:** 72 μg/dL  
- **02_18_BIO_FERRITIN:** 55 ng/mL  
- **02_19_BIO_BMI:** 28.8 kg/m²  
- **02_20_BIO_WAIST:** 82 cm  
- **02_21_BIO_HCT:** 39 %  
- **02_22_BIO_MCV:** 89 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 2 times/week  
- **03_4_LIFE_EXERC_TYPE:** Walking, Tai Chi  
- **03_5_LIFE_SLEEP:** 6-7 hours  
- **03_6_LIFE_STRESS:** 4  
- **03_7_LIFE_DIET:** Low-fat, high fiber  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 1.8 L/day  
- **03_10_LIFE_SCREEN:** 4 hours/day  
- **03_11_LIFE_WORK:** Retired

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε4  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Mother (stroke)  
- **05_2_FAM_DM:** Brother  
- **05_3_FAM_CA:** Aunt (breast)  
- **05_4_FAM_HTN:** Mother, Brother

**Medical History:**  
- **06_1_MED_COND:** Osteoporosis, Hypothyroidism  
- **06_2_MED_SURG:** Hysterectomy (age 45)  
- **06_3_MED_MED:** Levothyroxine, Calcium, Vitamin D  
- **06_4_MED_ALLR:** None

**Additional Notes:** Post-menopausal. Bone density reduced.

---

# Biomedical Lifestyle Genetic Interview #10

**Interview ID:** MED010  
**Date:** 2025-03-19  
**Location:** Krasnoyarsk Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 41  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 176 cm  
- **01_4_DEMO_WEIGHT:** 86 kg  
- **01_5_DEMO_ETHNICITY:** Asian

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 125 mmHg  
- **02_2_BIO_BP_DIAST:** 80 mmHg  
- **02_3_BIO_HR:** 75 bpm  
- **02_4_BIO_GLUCOSE:** 96 mg/dL  
- **02_5_BIO_TCHOL:** 198 mg/dL  
- **02_6_BIO_HDL:** 44 mg/dL  
- **02_7_BIO_LDL:** 132 mg/dL  
- **02_8_BIO_TG:** 110 mg/dL  
- **02_9_BIO_HGB:** 15.5 g/dL  
- **02_10_BIO_WBC:** 7.0 10^3/μL  
- **02_11_BIO_PLAT:** 238 10^3/μL  
- **02_12_BIO_CREAT:** 1.0 mg/dL  
- **02_13_BIO_ALT:** 30 U/L  
- **02_14_BIO_AST:** 28 U/L  
- **02_15_BIO_TSH:** 2.0 mIU/L  
- **02_16_BIO_VITD:** 30 ng/mL  
- **02_17_BIO_IRON:** 100 μg/dL  
- **02_18_BIO_FERRITIN:** 95 ng/mL  
- **02_19_BIO_BMI:** 27.8 kg/m²  
- **02_20_BIO_WAIST:** 86 cm  
- **02_21_BIO_HCT:** 47 %  
- **02_22_BIO_MCV:** 84 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Gym, Martial arts  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 6  
- **03_7_LIFE_DIET:** High protein  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 2.5 L/day  
- **03_10_LIFE_SCREEN:** 5 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Athlete profile. Good metabolic health.

---

# Biomedical Lifestyle Genetic Interview #11

**Interview ID:** MED011  
**Date:** 2025-03-20  
**Location:** Tyumen Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 36  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 172 cm  
- **01_4_DEMO_WEIGHT:** 70 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 115 mmHg  
- **02_2_BIO_BP_DIAST:** 75 mmHg  
- **02_3_BIO_HR:** 71 bpm  
- **02_4_BIO_GLUCOSE:** 90 mg/dL  
- **02_5_BIO_TCHOL:** 182 mg/dL  
- **02_6_BIO_HDL:** 56 mg/dL  
- **02_7_BIO_LDL:** 108 mg/dL  
- **02_8_BIO_TG:** 90 mg/dL  
- **02_9_BIO_HGB:** 13.8 g/dL  
- **02_10_BIO_WBC:** 6.4 10^3/μL  
- **02_11_BIO_PLAT:** 248 10^3/μL  
- **02_12_BIO_CREAT:** 0.82 mg/dL  
- **02_13_BIO_ALT:** 21 U/L  
- **02_14_BIO_AST:** 23 U/L  
- **02_15_BIO_TSH:** 2.0 mIU/L  
- **02_16_BIO_VITD:** 30 ng/mL  
- **02_17_BIO_IRON:** 82 μg/dL  
- **02_18_BIO_FERRITIN:** 42 ng/mL  
- **02_19_BIO_BMI:** 23.7 kg/m²  
- **02_20_BIO_WAIST:** 75 cm  
- **02_21_BIO_HCT:** 41 %  
- **02_22_BIO_MCV:** 92 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Yoga, Running  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Balanced  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.2 L/day  
- **03_10_LIFE_SCREEN:** 5 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** Grandmother (colon)  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Healthy individual.

---

# Biomedical Lifestyle Genetic Interview #12

**Interview ID:** MED012  
**Date:** 2025-03-20  
**Location:** Perm Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 49  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 177 cm  
- **01_4_DEMO_WEIGHT:** 91 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 135 mmHg  
- **02_2_BIO_BP_DIAST:** 85 mmHg  
- **02_3_BIO_HR:** 80 bpm  
- **02_4_BIO_GLUCOSE:** 105 mg/dL  
- **02_5_BIO_TCHOL:** 230 mg/dL  
- **02_6_BIO_HDL:** 40 mg/dL  
- **02_7_BIO_LDL:** 160 mg/dL  
- **02_8_BIO_TG:** 150 mg/dL  
- **02_9_BIO_HGB:** 15.0 g/dL  
- **02_10_BIO_WBC:** 7.0 10^3/μL  
- **02_11_BIO_PLAT:** 232 10^3/μL  
- **02_12_BIO_CREAT:** 1.02 mg/dL  
- **02_13_BIO_ALT:** 32 U/L  
- **02_14_BIO_AST:** 28 U/L  
- **02_15_BIO_TSH:** 2.6 mIU/L  
- **02_16_BIO_VITD:** 18 ng/mL  
- **02_17_BIO_IRON:** 95 μg/dL  
- **02_18_BIO_FERRITIN:** 110 ng/mL  
- **02_19_BIO_BMI:** 29.0 kg/m²  
- **02_20_BIO_WAIST:** 96 cm  
- **02_21_BIO_HCT:** 45 %  
- **02_22_BIO_MCV:** 86 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Former smoker (quit 3 years ago)  
- **03_2_LIFE_ALCOHOL:** Moderate  
- **03_3_LIFE_EXERC_FREQ:** 2 times/week  
- **03_4_LIFE_EXERC_TYPE:** Swimming  
- **03_5_LIFE_SLEEP:** 6-7 hours  
- **03_6_LIFE_STRESS:** 6  
- **03_7_LIFE_DIET:** Western diet  
- **03_8_LIFE_COFFEE:** 3 cups/day  
- **03_9_LIFE_WATER:** 1.6 L/day  
- **03_10_LIFE_SCREEN:** 7 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε4  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father (MI, age 55)  
- **05_2_FAM_DM:** Mother  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** Father

**Medical History:**  
- **06_1_MED_COND:** Hypertension, Pre-diabetes  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** ACE inhibitors  
- **06_4_MED_ALLR:** None

**Additional Notes:** Moderate cardiovascular risk.

---

# Biomedical Lifestyle Genetic Interview #13

**Interview ID:** MED013  
**Date:** 2025-03-21  
**Location:** Nizhny Novgorod Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 31  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 166 cm  
- **01_4_DEMO_WEIGHT:** 58 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 108 mmHg  
- **02_2_BIO_BP_DIAST:** 70 mmHg  
- **02_3_BIO_HR:** 68 bpm  
- **02_4_BIO_GLUCOSE:** 88 mg/dL  
- **02_5_BIO_TCHOL:** 178 mg/dL  
- **02_6_BIO_HDL:** 62 mg/dL  
- **02_7_BIO_LDL:** 100 mg/dL  
- **02_8_BIO_TG:** 80 mg/dL  
- **02_9_BIO_HGB:** 13.0 g/dL  
- **02_10_BIO_WBC:** 6.0 10^3/μL  
- **02_11_BIO_PLAT:** 265 10^3/μL  
- **02_12_BIO_CREAT:** 0.75 mg/dL  
- **02_13_BIO_ALT:** 18 U/L  
- **02_14_BIO_AST:** 20 U/L  
- **02_15_BIO_TSH:** 1.7 mIU/L  
- **02_16_BIO_VITD:** 38 ng/mL  
- **02_17_BIO_IRON:** 72 μg/dL  
- **02_18_BIO_FERRITIN:** 30 ng/mL  
- **02_19_BIO_BMI:** 21.1 kg/m²  
- **02_20_BIO_WAIST:** 66 cm  
- **02_21_BIO_HCT:** 39 %  
- **02_22_BIO_MCV:** 91 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Gym, Cardio  
- **03_5_LIFE_SLEEP:** 8 hours  
- **03_6_LIFE_STRESS:** 4  
- **03_7_LIFE_DIET:** High protein, low carb  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 2.6 L/day  
- **03_10_LIFE_SCREEN:** 4 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** Iron supplements  
- **06_4_MED_ALLR:** None

**Additional Notes:** Optimal health profile.

---

# Biomedical Lifestyle Genetic Interview #14

**Interview ID:** MED014  
**Date:** 2025-03-21  
**Location:** Rostov-on-Don Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 55  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 174 cm  
- **01_4_DEMO_WEIGHT:** 89 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 142 mmHg  
- **02_2_BIO_BP_DIAST:** 88 mmHg  
- **02_3_BIO_HR:** 78 bpm  
- **02_4_BIO_GLUCOSE:** 110 mg/dL  
- **02_5_BIO_TCHOL:** 250 mg/dL  
- **02_6_BIO_HDL:** 40 mg/dL  
- **02_7_BIO_LDL:** 175 mg/dL  
- **02_8_BIO_TG:** 175 mg/dL  
- **02_9_BIO_HGB:** 14.8 g/dL  
- **02_10_BIO_WBC:** 7.2 10^3/μL  
- **02_11_BIO_PLAT:** 228 10^3/μL  
- **02_12_BIO_CREAT:** 1.08 mg/dL  
- **02_13_BIO_ALT:** 38 U/L  
- **02_14_BIO_AST:** 32 U/L  
- **02_15_BIO_TSH:** 2.9 mIU/L  
- **02_16_BIO_VITD:** 16 ng/mL  
- **02_17_BIO_IRON:** 90 μg/dL  
- **02_18_BIO_FERRITIN:** 130 ng/mL  
- **02_19_BIO_BMI:** 29.4 kg/m²  
- **02_20_BIO_WAIST:** 98 cm  
- **02_21_BIO_HCT:** 44 %  
- **02_22_BIO_MCV:** 85 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Current smoker (15/day)  
- **03_2_LIFE_ALCOHOL:** Heavy  
- **03_3_LIFE_EXERC_FREQ:** None  
- **03_4_LIFE_EXERC_TYPE:** None  
- **03_5_LIFE_SLEEP:** 5 hours  
- **03_6_LIFE_STRESS:** 7  
- **03_7_LIFE_DIET:** Standard  
- **03_8_LIFE_COFFEE:** 4 cups/day  
- **03_9_LIFE_WATER:** 1.2 L/day  
- **03_10_LIFE_SCREEN:** 6 hours/day  
- **03_11_LIFE_WORK:** Shift work

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε4/ε4  
- **04_2_GENE_MTHFR:** C677T (homozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father, Brother  
- **05_2_FAM_DM:** Father  
- **05_3_FAM_CA:** Uncle (lung)  
- **05_4_FAM_HTN:** Father, Brother

**Medical History:**  
- **06_1_MED_COND:** Type 2 Diabetes, Hypertension, Hyperlipidemia, COPD  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** Metformin, Statins, BP medications  
- **06_4_MED_ALLR:** None

**Additional Notes:** High risk patient. Smoking cessation recommended.

---

# Biomedical Lifestyle Genetic Interview #15

**Interview ID:** MED015  
**Date:** 2025-03-22  
**Location:** Ufa Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 29  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 164 cm  
- **01_4_DEMO_WEIGHT:** 54 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 105 mmHg  
- **02_2_BIO_BP_DIAST:** 68 mmHg  
- **02_3_BIO_HR:** 66 bpm  
- **02_4_BIO_GLUCOSE:** 84 mg/dL  
- **02_5_BIO_TCHOL:** 170 mg/dL  
- **02_6_BIO_HDL:** 64 mg/dL  
- **02_7_BIO_LDL:** 95 mg/dL  
- **02_8_BIO_TG:** 55 mg/dL  
- **02_9_BIO_HGB:** 12.6 g/dL  
- **02_10_BIO_WBC:** 5.9 10^3/μL  
- **02_11_BIO_PLAT:** 272 10^3/μL  
- **02_12_BIO_CREAT:** 0.72 mg/dL  
- **02_13_BIO_ALT:** 16 U/L  
- **02_14_BIO_AST:** 18 U/L  
- **02_15_BIO_TSH:** 1.8 mIU/L  
- **02_16_BIO_VITD:** 40 ng/mL  
- **02_17_BIO_IRON:** 68 μg/dL  
- **02_18_BIO_FERRITIN:** 24 ng/mL  
- **02_19_BIO_BMI:** 20.1 kg/m²  
- **02_20_BIO_WAIST:** 64 cm  
- **02_21_BIO_HCT:** 38 %  
- **02_22_BIO_MCV:** 92 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 5 times/week  
- **03_4_LIFE_EXERC_TYPE:** CrossFit, Running  
- **03_5_LIFE_SLEEP:** 8 hours  
- **03_6_LIFE_STRESS:** 3  
- **03_7_LIFE_DIET:** Balanced, high protein  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.8 L/day  
- **03_10_LIFE_SCREEN:** 3 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Excellent health. Athlete.

---

# Biomedical Lifestyle Genetic Interview #16

**Interview ID:** MED016  
**Date:** 2025-03-22  
**Location:** Saratov Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 43  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 179 cm  
- **01_4_DEMO_WEIGHT:** 82 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 125 mmHg  
- **02_2_BIO_BP_DIAST:** 80 mmHg  
- **02_3_BIO_HR:** 74 bpm  
- **02_4_BIO_GLUCOSE:** 95 mg/dL  
- **02_5_BIO_TCHOL:** 200 mg/dL  
- **02_6_BIO_HDL:** 46 mg/dL  
- **02_7_BIO_LDL:** 135 mg/dL  
- **02_8_BIO_TG:** 95 mg/dL  
- **02_9_BIO_HGB:** 15.2 g/dL  
- **02_10_BIO_WBC:** 6.8 10^3/μL  
- **02_11_BIO_PLAT:** 242 10^3/μL  
- **02_12_BIO_CREAT:** 0.96 mg/dL  
- **02_13_BIO_ALT:** 28 U/L  
- **02_14_BIO_AST:** 26 U/L  
- **02_15_BIO_TSH:** 2.3 mIU/L  
- **02_16_BIO_VITD:** 26 ng/mL  
- **02_17_BIO_IRON:** 92 μg/dL  
- **02_18_BIO_FERRITIN:** 78 ng/mL  
- **02_19_BIO_BMI:** 25.6 kg/m²  
- **02_20_BIO_WAIST:** 85 cm  
- **02_21_BIO_HCT:** 46 %  
- **02_22_BIO_MCV:** 87 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Weight training, Running  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Balanced omnivore  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 2.2 L/day  
- **03_10_LIFE_SCREEN:** 6 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** A1298C (heterozygous)  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** Father

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Good health markers overall.

---

# Biomedical Lifestyle Genetic Interview #17

**Interview ID:** MED017  
**Date:** 2025-03-23  
**Location:** Volgograd Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 37  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 169 cm  
- **01_4_DEMO_WEIGHT:** 64 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 110 mmHg  
- **02_2_BIO_BP_DIAST:** 72 mmHg  
- **02_3_BIO_HR:** 69 bpm  
- **02_4_BIO_GLUCOSE:** 88 mg/dL  
- **02_5_BIO_TCHOL:** 185 mg/dL  
- **02_6_BIO_HDL:** 58 mg/dL  
- **02_7_BIO_LDL:** 110 mg/dL  
- **02_8_BIO_TG:** 85 mg/dL  
- **02_9_BIO_HGB:** 13.4 g/dL  
- **02_10_BIO_WBC:** 6.3 10^3/μL  
- **02_11_BIO_PLAT:** 252 10^3/μL  
- **02_12_BIO_CREAT:** 0.78 mg/dL  
- **02_13_BIO_ALT:** 19 U/L  
- **02_14_BIO_AST:** 21 U/L  
- **02_15_BIO_TSH:** 2.1 mIU/L  
- **02_16_BIO_VITD:** 32 ng/mL  
- **02_17_BIO_IRON:** 76 μg/dL  
- **02_18_BIO_FERRITIN:** 36 ng/mL  
- **02_19_BIO_BMI:** 22.4 kg/m²  
- **02_20_BIO_WAIST:** 70 cm  
- **02_21_BIO_HCT:** 40 %  
- **02_22_BIO_MCV:** 91 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Pilates, Swimming  
- **03_5_LIFE_SLEEP:** 7-8 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Mediterranean  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.4 L/day  
- **03_10_LIFE_SCREEN:** 4 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Mother (hypertension)  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** Mother

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Healthy lifestyle.

---

# Biomedical Lifestyle Genetic Interview #18

**Interview ID:** MED018  
**Date:** 2025-03-23  
**Location:** Chelyabinsk Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 51  
- **01_2_DEMO_GENDER:** Male  
- **01_3_DEMO_HEIGHT:** 181 cm  
- **01_4_DEMO_WEIGHT:** 90 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 132 mmHg  
- **02_2_BIO_BP_DIAST:** 84 mmHg  
- **02_3_BIO_HR:** 77 bpm  
- **02_4_BIO_GLUCOSE:** 102 mg/dL  
- **02_5_BIO_TCHOL:** 215 mg/dL  
- **02_6_BIO_HDL:** 44 mg/dL  
- **02_7_BIO_LDL:** 145 mg/dL  
- **02_8_BIO_TG:** 130 mg/dL  
- **02_9_BIO_HGB:** 15.2 g/dL  
- **02_10_BIO_WBC:** 6.9 10^3/μL  
- **02_11_BIO_PLAT:** 235 10^3/μL  
- **02_12_BIO_CREAT:** 1.0 mg/dL  
- **02_13_BIO_ALT:** 30 U/L  
- **02_14_BIO_AST:** 27 U/L  
- **02_15_BIO_TSH:** 2.5 mIU/L  
- **02_16_BIO_VITD:** 20 ng/mL  
- **02_17_BIO_IRON:** 92 μg/dL  
- **02_18_BIO_FERRITIN:** 100 ng/mL  
- **02_19_BIO_BMI:** 27.5 kg/m²  
- **02_20_BIO_WAIST:** 92 cm  
- **02_21_BIO_HCT:** 46 %  
- **02_22_BIO_MCV:** 86 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Former smoker (quit 8 years ago)  
- **03_2_LIFE_ALCOHOL:** Moderate  
- **03_3_LIFE_EXERC_FREQ:** 2-3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Cycling, Gym  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Balanced  
- **03_8_LIFE_COFFEE:** 2 cups/day  
- **03_9_LIFE_WATER:** 1.9 L/day  
- **03_10_LIFE_SCREEN:** 6 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε4  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Father (MI)  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** Aunt (prostate)  
- **05_4_FAM_HTN:** Father

**Medical History:**  
- **06_1_MED_COND:** Pre-hypertension, Hyperlipidemia  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** Statins  
- **06_4_MED_ALLR:** None

**Additional Notes:** Moderate risk - improving lifestyle.

---

# Biomedical Lifestyle Genetic Interview #19

**Interview ID:** MED019  
**Date:** 2025-03-24  
**Location:** Irkutsk Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 27  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 163 cm  
- **01_4_DEMO_WEIGHT:** 56 kg  
- **01_5_DEMO_ETHNICITY:** Asian

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 104 mmHg  
- **02_2_BIO_BP_DIAST:** 66 mmHg  
- **02_3_BIO_HR:** 65 bpm  
- **02_4_BIO_GLUCOSE:** 84 mg/dL  
- **02_5_BIO_TCHOL:** 172 mg/dL  
- **02_6_BIO_HDL:** 60 mg/dL  
- **02_7_BIO_LDL:** 98 mg/dL  
- **02_8_BIO_TG:** 70 mg/dL  
- **02_9_BIO_HGB:** 12.9 g/dL  
- **02_10_BIO_WBC:** 6.0 10^3/μL  
- **02_11_BIO_PLAT:** 268 10^3/μL  
- **02_12_BIO_CREAT:** 0.74 mg/dL  
- **02_13_BIO_ALT:** 17 U/L  
- **02_14_BIO_AST:** 19 U/L  
- **02_15_BIO_TSH:** 1.9 mIU/L  
- **02_16_BIO_VITD:** 36 ng/mL  
- **02_17_BIO_IRON:** 70 μg/dL  
- **02_18_BIO_FERRITIN:** 26 ng/mL  
- **02_19_BIO_BMI:** 21.1 kg/m²  
- **02_20_BIO_WAIST:** 64 cm  
- **02_21_BIO_HCT:** 38 %  
- **02_22_BIO_MCV:** 92 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Non-smoker  
- **03_2_LIFE_ALCOHOL:** Rare  
- **03_3_LIFE_EXERC_FREQ:** 4 times/week  
- **03_4_LIFE_EXERC_TYPE:** Dance, Yoga  
- **03_5_LIFE_SLEEP:** 8 hours  
- **03_6_LIFE_STRESS:** 4  
- **03_7_LIFE_DIET:** Asian fusion  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.2 L/day  
- **03_10_LIFE_SCREEN:** 3 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** No variant  
- **04_3_GENE_LACTASE:** Yes  
- **04_4_GENE_BRCA:** Negative  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** None  
- **05_2_FAM_DM:** None  
- **05_3_FAM_CA:** None  
- **05_4_FAM_HTN:** None

**Medical History:**  
- **06_1_MED_COND:** None  
- **06_2_MED_SURG:** None  
- **06_3_MED_MED:** None  
- **06_4_MED_ALLR:** None

**Additional Notes:** Very healthy profile.

---

# Biomedical Lifestyle Genetic Interview #20

**Interview ID:** MED020  
**Date:** 2025-03-24  
**Location:** Kaliningrad Medical Center

**Demographics:**  
- **01_1_DEMO_AGE:** 48  
- **01_2_DEMO_GENDER:** Female  
- **01_3_DEMO_HEIGHT:** 167 cm  
- **01_4_DEMO_WEIGHT:** 74 kg  
- **01_5_DEMO_ETHNICITY:** European

**Biomedical Markers:**  
- **02_1_BIO_BP_SYST:** 122 mmHg  
- **02_2_BIO_BP_DIAST:** 78 mmHg  
- **02_3_BIO_HR:** 73 bpm  
- **02_4_BIO_GLUCOSE:** 96 mg/dL  
- **02_5_BIO_TCHOL:** 205 mg/dL  
- **02_6_BIO_HDL:** 52 mg/dL  
- **02_7_BIO_LDL:** 135 mg/dL  
- **02_8_BIO_TG:** 90 mg/dL  
- **02_9_BIO_HGB:** 13.2 g/dL  
- **02_10_BIO_WBC:** 6.5 10^3/μL  
- **02_11_BIO_PLAT:** 250 10^3/μL  
- **02_12_BIO_CREAT:** 0.85 mg/dL  
- **02_13_BIO_ALT:** 23 U/L  
- **02_14_BIO_AST:** 24 U/L  
- **02_15_BIO_TSH:** 2.6 mIU/L  
- **02_16_BIO_VITD:** 24 ng/mL  
- **02_17_BIO_IRON:** 75 μg/dL  
- **02_18_BIO_FERRITIN:** 48 ng/mL  
- **02_19_BIO_BMI:** 26.5 kg/m²  
- **02_20_BIO_WAIST:** 78 cm  
- **02_21_BIO_HCT:** 40 %  
- **02_22_BIO_MCV:** 90 fL

**Lifestyle Factors:**  
- **03_1_LIFE_SMOKE:** Former smoker (quit 5 years ago)  
- **03_2_LIFE_ALCOHOL:** Occasional  
- **03_3_LIFE_EXERC_FREQ:** 3 times/week  
- **03_4_LIFE_EXERC_TYPE:** Walking, Aqua aerobics  
- **03_5_LIFE_SLEEP:** 7 hours  
- **03_6_LIFE_STRESS:** 5  
- **03_7_LIFE_DIET:** Low-fat, balanced  
- **03_8_LIFE_COFFEE:** 1 cup/day  
- **03_9_LIFE_WATER:** 2.0 L/day  
- **03_10_LIFE_SCREEN:** 5 hours/day  
- **03_11_LIFE_WORK:** Day shift

**Genetic Markers:**  
- **04_1_GENE_APOE:** ε3/ε3  
- **04_2_GENE_MTHFR:** C677T (heterozygous)  
- **04_3_GENE_LACTASE:** No  
- **04_4_GENE_BRCA:** Not tested  
- **04_5_GENE_FVL:** No variant

**Family History:**  
- **05_1_FAM_CVD:** Mother (stroke)  
- **05_2_FAM_DM:** Father  
- **05_3_FAM_CA:** Aunt (breast)  
- **05_4_FAM_HTN:** Mother

**Medical History:**  
- **06_1_MED_COND:** Hypothyroidism (well-controlled)  
- **06_2_MED_SURG:** Cholecystectomy (age 40)  
- **06_3_MED_MED:** Levothyroxine  
- **06_4_MED_ALLR:** None

**Additional Notes:** Stable health condition.

---

*Document Version: 1.2*  
*Total Interviews: 20*  
*Total Features: 52*