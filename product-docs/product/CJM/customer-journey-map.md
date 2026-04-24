# Healora AI — Customer Journey Map (CJM)

## Overview

**Goal:** From obesity diagnosis to personalized longevity path through digital twin technology.

**User Segments:**
- **B2C**: Health-conscious individuals seeking weight management
- **B2B**: Healthcare providers, clinics, wellness programs

---

## Stage 1: REGISTRATION

### Touchpoints
| Step | Action | Channel | Data Collected |
|------|--------|---------|---------------|
| 1.1 | Landing page visit | Web, Mobile | - |
| 1.2 | Sign up / Register | Web App | Email, Name |
| 1.3 | Welcome email | Email | - |
| 1.4 | Account verification | Email | - |

### User Actions
- Browse landing page
- Read about digital twin benefits
- Click "Start Journey" / "Register"
- Enter email and create password
- Verify email address

### Emotions
| Phase | Emotion | Intensity |
|-------|---------|-----------|
| Discovery | Curiosity | 🟢 🟢 🟢 🟢 🟢 |
| Sign-up | Anticipation | 🟢 🟢 🟢 ⚪ ⚪ |

### Pain Points
- Complex registration form
- Email verification delays
- Unclear value proposition

### Opportunities
- Social proof testimonials
- Progress indicators
- Quick 30-second signup

---

## Stage 2: ONBOARDING

### Touchpoints
| Step | Action | Channel | Data Collected |
|------|--------|---------|---------------|
| 2.1 | Profile setup | Web App | Age, Gender, Goals |
| 2.2 | Initial health quiz | Web App | Weight, Height, Medical history |
| 2.3 | Wearable connection | Web App | HRV, Sleep, Activity |
| 2.4 | Initial blood test | Lab Partner | Biomarkers |
| 2.5 | Digital Twin initialization | System | Multi-feature profile |

### User Actions
- Complete health profile (10 min)
- Answer lifestyle questions
- Connect wearable device (Oura, Whoop, Fitbit)
- Order/schedule blood test
- Wait for Digital Twin generation (24-48h)

### Emotions
| Phase | Emotion | Intensity |
|-------|---------|-----------|
| Profile | Engaged | 🟢 🟢 🟢 🟢 ⚪ |
| Quiz | Hopeful | 🟢 🟢 🟢 ⚪ ⚪ |
| Blood test | Vulnerable | 🟢 🟢 ⚪ ⚪ ⚪ |
| Wait | Anticipation | 🟢 🟢 🟢 ⚪ ⚪ |

### Pain Points
- Long onboarding time (20-30 min)
- Unclear instructions for blood test
- Confusion about wearable compatibility

### Opportunities
- Gamification of quiz completion
- Video tutorials
- Progress celebration badges

---

## Stage 3: ENRICHING

### Touchpoints
| Step | Action | Channel | Data Collected |
|------|--------|---------|---------------|
| 3.1 | Daily diary entries | Mobile App | Mood, Sleep, Nutrition |
| 3.2 | Weekly check-ins | Web/Mobile | Weight, Energy, Well-being |
| 3.3 | Wearable sync | Auto | HRV, Sleep stages, Activity |
| 3.4 | Supplement logging | Mobile App | Supplements, Medications |
| 3.5 | Dietary tracking | Mobile App | Calories, Macros, Meals |

### User Actions
- Log morning mood and sleep quality
- Record daily meals and snacks
- Track workouts and steps
- Update supplements
- Complete weekly progress survey

### Data Flow
```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Diary     │     │  Wearable   │     │   Blood     │
│  (7 days)   │     │   (daily)   │     │  (monthly)  │
└──────┬──────┘     └──────┬──────┘     └──────┬──────┘
       │                   │                   │
       └───────────────────┴───────────────────┘
                           │
                    ┌──────▼──────┐
                    │  DIGITAL    │
                    │    TWIN     │
                    │ (Enriched)  │
                    └─────────────┘
```

### Emotions
| Phase | Emotion | Intensity |
|-------|---------|-----------|
| Daily log | Habit-forming | 🟢 🟢 🟢 🟢 🟢 |
| Weekly | Progress | 🟢 🟢 🟢 🟢 ⚪ |
| Milestone | Achievement | 🟢 🟢 🟢 🟢 🟢 |

### Pain Points
- Manual diary entry burden
- Forgetting to log
- Inconsistent data quality

### Opportunities
- Voice-to-text logging
- Reminder notifications
- Streaks and rewards
- AI-assisted auto-logging

---

## Stage 4: GENERATE RECOMMENDATIONS

### Short-term Interventions (1-4 weeks)

| Category | Intervention | Goal | Metric |
|----------|--------------|------|--------|
| **Sleep** | Consistent bedtime 22:00-23:00 | Improve sleep quality | +15% |
| **Nutrition** | Reduce late-night eating | Weight loss | -2kg |
| **Movement** | 10,000 steps/day | Increase activity | +3000 steps |
| **Stress** | Meditation 10min/day | Reduce stress | -10% PSS |
| **Hydration** | 2L water/day | Improve hydration | 100% |

### Long-term Interventions (3-12 months)

| Category | Intervention | Goal | Metric |
|----------|--------------|------|--------|
| **Weight** | IF 16:8 protocol | Body composition | -10kg |
| **Metabolic** | Personalized supplements | Optimize biomarkers | CRP, HbA1c |
| **Cardio** | HIIT 2x/week | Improve VO2 max | +15% |
| **Longevity** | Quarterly lab review | Biological age | -3 years |

### Touchpoints
| Step | Action | Channel | Output |
|------|--------|---------|--------|
| 4.1 | Twin update | System | Enhanced profile |
| 4.2 | Recommendation generation | AI/ML | Personalized protocol |
| 4.3 | Review recommendations | Web App | Interactive dashboard |
| 4.4 | Accept/modify | User | Action plan |
| 4.5 | Start intervention | User | Tracking begins |

### User Actions
- Review Digital Twin visualization
- Read recommendation rationale
- Select priority interventions
- Set personal goals
- Begin intervention tracking

### Emotions
| Phase | Emotion | Intensity |
|-------|---------|-----------|
| First recommendations | Excitement | 🟢 🟢 🟢 🟢 🟢 |
| Rationale view | Trust | 🟢 🟢 🟢 🟢 ⚪ |
| Selection | Empowerment | 🟢 🟢 🟢 🟢 🟢 |
| Start action | Motivation | 🟢 🟢 🟢 🟢 🟢 |

### Pain Points
- Information overload
- Conflicting recommendations
- Uncertainty about priorities

### Opportunities
- AI prioritization
- "One-click" accept
- Expert consultation option

---

## Stage 5: ONGOING OPTIMIZATION

### Cycle
```
Week 1-4     → Short-term interventions
Week 5-8     → Re-assessment + Twin update
Week 9-12    → Long-term adjustments
Month 3-6    → Deep dive biomarkers
Month 6-12   → Longevity focus
```

### Touchpoints
| Step | Action | Frequency |
|------|--------|-----------|
| 5.1 | Daily tracking | Daily |
| 5.2 | Weekly review | Weekly |
| 5.3 | Twin refinement | Monthly |
| 5.4 | Lab re-check | Quarterly |
| 5.5 | Health milestone | As achieved |

### Emotions Over Time
| Week | Emotion | Trend |
|------|---------|-------|
| 1 | Excited | ⬆️ |
| 4 | Engaged | ➡️ |
| 8 | Confident | ⬆️ |
| 12 | Satisfied | ➡️ |
| 24+ | Loyal | ⬆️ |

---

## Success Metrics

| Stage | Metric | Target | Actual |
|-------|--------|--------|--------|
| Registration | Sign-up rate | 30% | - |
| Onboarding | Completion rate | 70% | - |
| Enriching | Diary adherence | 80% | - |
| Recommendations | Acceptance rate | 60% | - |
| Optimization | 6-month retention | 50% | - |

---

## Key Takeaways

### Critical Moments
1. **First recommendation** — Sets the tone
2. **First visible result** — Builds trust
3. **Weekly check-in** — Maintains engagement
4. **Quarterly review** — Demonstrates value

### Friction Points
- Registration drop-off
- Blood test logistics
- Daily logging fatigue
- Recommendation overwhelm

### Solutions
- Frictionless signup
- At-home test kits
- Smart reminders
- AI prioritization

---

*Document Version: 1.0*
*Date: 2024*
*Healora AI Product Team*