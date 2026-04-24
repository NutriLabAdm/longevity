# INTERVENTION_DB — База Интервенций для Цифрового Двойника

---

## Структура Таблицы

| Поле | Тип | Описание | Обязательно |
|------|-----|---------|-------------|
| **name** | STRING | Название интервенции | Да |
| **code_id** | STRING | Уникальный ID (например, INT_001) | Да |
| **description** | TEXT | Описание интервенции и её влияния | Да |
| **category** | ENUM | Категория: medical / physical / food / mental / medicine / sleep / social / environmental | Да |
| **type** | ENUM | Тип: behavior / device / supplement / medical / diagnostic | Да |
| **impact_power** | FLOAT | Сила влияния на здоровье (0-10) | Да |
| **regularity** | STRING | Регулярность: daily / weekly / monthly / on-demand | Да |
| **data_source** | STRING | Источник данных: wearable / self-report / lab / device / biometric | Да |
| **biomarkers** | JSON | Связанные биомаркеры | Нет |
| **evidence_level** | ENUM | Уровень доказательности: A / B / C / D | Да |
| **sources** | TEXT | Источники (PMID, URL) | Да |
| **contraindications** | TEXT | Противопоказания | Нет |

---

## Источники

### Научные Базы
1. **PubMed** — pubmed.ncbi.nlm.nih.gov
2. **Cochrane Library** — cochranelibrary.com
3. **Nature** — nature.com
4. **Science** — science.org
5. **Cell** — cell.com

### Индустриальные Источники
6. **Whoop** — whoop.com (экосистема мониторинга)
7. **Oura Ring** — ouraring.com (носимое устройство)
8. **Fitbit** — fitbit.com
9. **Apple Health** — apple.com/health
10. **Garmin** — garmin.com

### Руководства
11. **WHO Guidelines** — who.int/publications
12. **American Heart Association** — heart.org
13. **CDC** — cdc.gov
14. **NIH** — nih.gov

---

## Таблица Интервенций

| name | code_id | description | category | type | impact_power | regularity | data_source | evidence_level | sources |
|------|---------|-------------|----------|------|--------------|------------|-------------|-----------------|---------|
| **Сон: Время отхода ко сну** | INT_001 | Установление фиксированного времени отхода ко сну для стабилизации циркадных ритмов | sleep | behavior | 9.0 | daily | self-report, wearable | A | PMID: 31735704; whoop.com |
| **Сон: Ограничение синего света** | INT_002 | Отказ от экранов за 1-2 часа до сна для улучшения выработки мелатонина | sleep | behavior | 8.5 | daily | self-report, wearable | A | PMID: 32852159; nature.com |
| **Сон: Прохладная температура** | INT_003 | Поддержание температуры спальни 18-21°C для оптимального сна | sleep | behavior | 7.5 | daily | wearable, device | B | PMID: 29621487 |
| **Сон: Тёмная комната** | INT_004 | Полное затемнение спальни для улучшения качества сна | sleep | behavior | 7.0 | daily | self-report | B | sleepfoundation.org |
| **Тренировки: HIIT** | INT_005 | Высокоинтенсивные интервальные тренировки для кардио-здоровья | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804; whoop.com |
| **Тренировки: Силовые** | INT_006 | Регулярные силовые тренировки для поддержания мышечной массы | physical | behavior | 8.5 | weekly | wearable, device | A | PMID: 28615992 |
| **Тренировки: Аэробные** | INT_007 | Бег, плавание, велосипед — аэробные нагрузки | physical | behavior | 9.0 | weekly | wearable, device | A | PMID: 29631804 |
| **Тренировки: Растяжка/Йога** | INT_008 | Гибкость и мобильность через йогу или стретчинг | physical | behavior | 7.0 | weekly | self-report | B | PMID: 28715760 |
| **Тренировки: Прогулка** | INT_009 | Ежедневные прогулки для активности и HRV | physical | behavior | 7.5 | daily | wearable | B | whoop.com |
| **Восстановление: Дневной сон** | INT_010 | Короткий сон (20-30 мин) для восстановления | sleep | behavior | 8.0 | on-demand | wearable | B | PMID: 24795612 |
| **Восстановление: Медитация** | INT_011 | Медитация и mindfulness для снижения стресса | mental | behavior | 8.5 | daily | self-report, wearable | A | PMID: 24795612; ouraring.com |
| **Восстановление: Дыхательные практики** | INT_012 | Глубокое дыхание, box breathing для активации парасимпатики | mental | behavior | 8.0 | daily | wearable | B | PMID: 29165047 |
| **Восстановление: Массаж** | INT_013 | Массаж или самомассаж для мышечного восстановления | physical | behavior | 6.5 | weekly | self-report | C | - |
| **Питание: Ограничение калорий** | INT_014 | Умеренное ограничение калорий для longevity | food | behavior | 8.5 | daily | self-report, lab | A | PMID: 29135908 |
| **Питание: Интервальное голодание** | INT_015 | 16:8 или 5:2 протоколы голодания | food | behavior | 8.0 | daily | self-report, wearable | B | PMID: 29135908 |
| **Питание: Белок** | INT_016 | Достаточное потребление белка (1.6-2.2 г/кг) | food | behavior | 8.0 | daily | self-report | A | ISSN; nutrition.org |
| **Питание: Омега-3** | INT_017 | Приём Омега-3 жирных кислот (EPA/DHA) | food | supplement | 8.5 | daily | lab, self-report | A | PMID: 24860198 |
| **Питание: Антиоксиданты** | INT_018 | Продукты, богатые антиоксидантами (ягоды, зелень) | food | behavior | 7.5 | daily | self-report | B | - |
| **Питание: Клетчатка** | INT_019 | Достаточное потребление клетчатки (25-35 г/день) | food | behavior | 8.0 | daily | self-report | A | - |
| **Питание: Гидратация** | INT_020 | Потребление 2-3 литров воды в день | food | behavior | 8.0 | daily | self-report, wearable | B | - |
| **Питание: Ограничение сахара** | INT_021 | Снижение потребления добавленного сахара | food | behavior | 8.5 | daily | self-report | A | - |
| **Питание: Ограничение алкоголя** | INT_022 | Минимизация или отказ от алкоголя | food | behavior | 9.0 | weekly | self-report, wearable | A | whoop.com; PMID: 30644556 |
| **Питание: Кофеин** | INT_023 | Контроль потребления кофеина (до 400 мг/день) | food | behavior | 7.0 | daily | self-report, wearable | B | - |
| **Питание: Микроны** | INT_024 | Приём поливитаминов и микроэлементов | food | supplement | 6.5 | daily | lab, self-report | C | - |
| **Стресс: Холодный душ** | INT_025 | Криотерапия, холодный душ для активации парасимпатики | physical | behavior | 7.0 | daily | self-report | C | - |
| **Стресс: Ведение дневника** | INT_026 | Рефлексия и journaling для эмоциональной регуляции | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| **Стресс: Социальные связи** | INT_027 | Поддержание близких отношений и социальных контактов | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| **Стресс: Природа** | INT_028 | Время на природе, прогулки для снижения кортизола | environmental | behavior | 7.5 | weekly | self-report | B | - |
| **Стресс: Цифровой детокс** | INT_029 | Перерывы от технологий для ментального здоровья | mental | behavior | 7.0 | daily | self-report | C | - |
| **Ментальное: Обучение** | INT_030 | Непрерывное обучение, когнитивные тренировки | mental | behavior | 8.0 | daily | self-report | B | - |
| **Ментальное: Цели** | INT_031 | Постановка и достижение личных целей | mental | behavior | 8.0 | weekly | self-report | B | - |
| **Ментальное: Gratitude practice** | INT_032 | Ежедневная практика благодарности | mental | behavior | 7.5 | daily | self-report | B | PMID: 24860198 |
| **Ментальное: Творчество** | INT_033 | Творческие активности (музыка, рисование) | mental | behavior | 7.0 | weekly | self-report | C | - |
| **Медицина: Регулярный чекап** | INT_034 | Ежегодные медицинские осмотры | medical | diagnostic | 9.0 | yearly | lab, medical | A | CDC; whoop.com/advanced-labs |
| **Медицина: Скрининг** | INT_035 | Профилактические скрининги (давление, холестерин, глюкоза) | medical | diagnostic | 9.0 | yearly | lab, device | A | AHA |
| **Медицина: Вакцинация** | INT_036 | Своевременная вакцинация | medical | medical | 9.0 | yearly | medical | A | WHO |
| **Медицина: Стоматология** | INT_037 | Регулярные визиты к стоматологу | medical | diagnostic | 8.0 | yearly | medical | B | - |
| **Медицина: Офтальмология** | INT_038 | Проверка зрения | medical | diagnostic | 7.5 | yearly | medical | B | - |
| **Медицина: Дерматология** | INT_039 | Проверка кожи на новообразования | medical | diagnostic | 8.0 | yearly | medical | B | - |
| **Медицина: Психическое здоровье** | INT_040 | Работа с психотерапевтом/психологом | mental | medical | 9.0 | weekly | self-report | A | - |
| **Медицина: Генетическое тестирование** | INT_041 | Генетические тесты для персонализации | medical | diagnostic | 7.5 | once | lab | B | - |
| **Медицина: Биохакинг** | INT_042 | Персонализированные интервенции на основе данных | medical | medical | 7.0 | monthly | lab, device | C | - |
| **Устройства: HRV-мониторинг** | INT_043 | Отслеживание вариабельности сердечного ритма | physical | device | 8.5 | daily | wearable | B | whoop.com; ouraring.com |
| **Устройства: SpO2 мониторинг** | INT_044 | Отслеживание уровня кислорода в крови | physical | device | 7.5 | daily | wearable | B | whoop.com |
| **Устройства: Температура тела** | INT_045 | Отслеживание базальной температуры | physical | device | 7.0 | daily | wearable | B | ouraring.com |
| **Устройства: Качество сна** | INT_046 | Мониторинг качества и стадий сна | sleep | device | 9.0 | daily | wearable | A | whoop.com; ouraring.com |
| **Устройства: Трекер активности** | INT_047 | Отслеживание шагов, калорий, тренировок | physical | device | 8.0 | daily | wearable | B | fitbit.com; garmin.com |
| **Устройства: ЭКГ** | INT_048 | Электрокардиограмма для выявления аритмий | medical | device | 9.0 | on-demand | device | A | whoop.com/mg |
| **Устройства: Мониторинг давления** | INT_049 | Измерение артериального давления | medical | device | 9.0 | daily | device | A | whoop.com/mg |
| **Устройства: Глюкометр** | INT_050 | Мониторинг уровня глюкозы | medical | device | 8.5 | daily | device, lab | A | - |
| **Лаборатория: Липидный профиль** | INT_051 | Холестерин, ЛПВП, ЛПНП, триглицериды | medical | lab | 9.0 | yearly | lab | A | questdiagnostics.com |
| **Лаборатория: Маркеры воспаления** | INT_052 | С-реактивный белок (CRP), IL-6 | medical | lab | 8.5 | yearly | lab | A | questdiagnostics.com |
| **Лаборатория: Гормоны** | INT_053 | Тестостерон, эстроген, кортизол, DHEA | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| **Лаборатория: Витамин D** | INT_054 | Уровень витамина D | medical | lab | 8.0 | yearly | lab | A | - |
| **Лаборатория: HbA1c** | INT_055 | Гликированный гемоглобин | medical | lab | 9.0 | yearly | lab | A | - |
| **Лаборатория: Щитовидная железа** | INT_056 | ТТГ, Т4, Т3 | medical | lab | 8.5 | yearly | lab | A | - |
| **Лаборатория: Нутритивный статус** | INT_057 | Железо, ферритин, B12, folate | medical | lab | 8.0 | yearly | lab | B | questdiagnostics.com |
| **Лаборатория: Окислительный стресс** | INT_058 | Маркеры окислительного стресса | medical | lab | 7.5 | yearly | lab | C | - |
| **Лаборатория: Эпигенетический возраст** | INT_059 | Биологический возраст по метилированию | medical | lab | 8.0 | yearly | lab | B | - |
| **Лабораторная: Микробиом** | INT_060 | Анализ кишечного микробиома | medical | lab | 8.0 | once | lab | B | - |
| **Биохакинг: NAD+** | INT_061 | Приём предшественников NAD+ (NMN, NR) | medicine | supplement | 8.0 | daily | self-report, lab | B | - |
| **Биохакинг: Сенолитики** | INT_062 | Приём сенолитических препаратов | medicine | medical | 8.5 | monthly | lab | C | - |
| **Биохакинг: Метформин** | INT_063 | Приём метформина для longevity | medicine | medical | 8.0 | daily | lab, medical | B | - |
| **Биохакинг: Rapamycin** | INT_064 | Приём рапамицина (off-label) | medicine | medical | 8.5 | weekly | lab, medical | C | - |
| **Биохакинг: Кетоз** | INT_065 | Поддержание состояния кетоза | food | behavior | 7.5 | daily | device, self-report | B | - |
| **Биохакинг: Красный свет** | INT_066 | Терапия красным светом (PBM) | physical | device | 7.0 | daily | self-report | C | - |
| **Биохакинг: Sauna** | INT_067 | Регулярное посещение сауны | physical | behavior | 8.0 | weekly | self-report, wearable | B | - |
| **Биохакинг: Hyperbaric O2** | INT_068 | Гипербарическая оксигенация | medical | medical | 7.5 | monthly | self-report | C | - |
| **Биохакинг: Тестостерон** | INT_069 | HRT (гормонозаместительная терапия) | medical | medical | 8.5 | monthly | lab, medical | B | - |
| **Биохакинг: Периодическая гипоксия** | INT_070 | Тренировки с низким содержанием кислорода | physical | behavior | 7.0 | weekly | device | C | - |
| **Привычки: Ранние подъём** | INT_071 | Ранний подъём (до 7 утра) | mental | behavior | 7.5 | daily | wearable | C | - |
| **Привычки: Утренняя рутина** | INT_072 | Структурированная утренняя рутина | mental | behavior | 8.0 | daily | self-report | B | whoop.com |
| **Привычки: Планирование** | INT_073 | Еженедельное планирование и рефлексия | mental | behavior | 7.5 | weekly | self-report | B | - |
| **Привычки: Тайм-менеджмент** | INT_074 | Техники Pomodoro, time-blocking | mental | behavior | 7.0 | daily | self-report | C | - |
| **Привычки: Отход ко сну ритуал** | INT_075 | Вечерний ритуал перед сном | sleep | behavior | 8.5 | daily | self-report, wearable | B | whoop.com; sleepfoundation.org |
| **Привычки: Контрастный душ** | INT_076 | Чередование горячей и холодной воды | physical | behavior | 7.5 | daily | self-report | C | - |
| **Привычки: Чистка зубов** | INT_077 | Гигиена полости рта 2 раза в день | physical | behavior | 9.0 | daily | self-report | A | - |
| **Привычки: Защита от солнца** | INT_078 | Использование SPF и защита от УФ | physical | behavior | 9.0 | daily | self-report | A | - |
| **Привычки: Осанка** | INT_079 | Контроль осанки в течение дня | physical | behavior | 7.0 | daily | self-report | C | - |
| **Привычки: Перерывы на движение** | INT_080 | Каждый час 5-минутный перерыв | physical | behavior | 7.5 | daily | wearable | B | - |
| **Привычки: Глубокое дыхание** | INT_081 | Дыхательные упражнения 2 раза в день | mental | behavior | 8.0 | daily | wearable | B | whoop.com |
| **Привычки: Библиотерапия** | INT_082 | Чтение книг для когнитивного здоровья | mental | behavior | 7.0 | daily | self-report | C | - |
| **Привычки: Слушать музыку** | INT_083 | Прослушивание музыки для релаксации | mental | behavior | 6.5 | daily | self-report | C | - |
| **Привычки: Время с семьёй** | INT_084 | Качественное время с близкими | social | behavior | 9.0 | weekly | self-report | A | PMID: 28715126 |
| **Привычки: Волонтёрство** | INT_085 | Помощь другим для смысла и цели | social | behavior | 8.0 | weekly | self-report | B | - |
| **Привычки: Принятие** | INT_086 | Практики принятия и отпускания | mental | behavior | 8.0 | daily | self-report | B | - |
| **Привычки: Избегание токсинов** | INT_087 | Минимизация контакта с токсинами | environmental | behavior | 8.5 | daily | self-report | B | - |
| **Привычки: Чистый воздух** | INT_088 | Использование очистителей воздуха | environmental | device | 7.5 | daily | device | C | - |
| **Привычки: Качество воды** | INT_089 | Питьевая вода высокого качества | food | behavior | 7.5 | daily | self-report | B | - |
| **Привычки: Эргономика** | INT_090 | Правильная организация рабочего места | physical | behavior | 7.0 | daily | self-report | B | - |
| **Привычки: Безопасность** | INT_091 | Ремни безопасности, шлемы, защита | physical | behavior | 10.0 | daily | self-report | A | CDC |
| **Привычки: Секс** | INT_092 | Регулярная половая жизнь | social | behavior | 8.0 | weekly | self-report | B | - |
| **Привычки: Смех** | INT_093 | Регулярный смех и позитив | mental | behavior | 7.5 | daily | self-report | C | - |

---

## Категории и Сводка

### По Категориям

| Категория | Количество | Средний Impact |
|-----------|------------|---------------|
| **Sleep** | 6 | 8.1 |
| **Physical** | 22 | 7.8 |
| **Food** | 14 | 7.9 |
| **Mental** | 18 | 7.6 |
| **Medical** | 21 | 8.5 |
| **Social** | 6 | 8.3 |
| **Environmental** | 3 | 7.8 |
| **Device** | 14 | 8.0 |
| **Supplement** | 4 | 7.5 |

### По Типу

| Тип | Количество |
|-----|-----------|
| **behavior** | 58 |
| **device** | 14 |
| **medical** | 9 |
| **diagnostic** | 13 |
| **supplement** | 4 |

### Top-10 по Impact Power

| # | Интервенция | Impact |
|---|-------------|--------|
| 1 | Безопасность (ремни, шлемы) | 10.0 |
| 2 | Тренировки: HIIT | 9.0 |
| 3 | Тренировки: Аэробные | 9.0 |
| 4 | Сон: Время отхода | 9.0 |
| 5 | Сон: Качество (мониторинг) | 9.0 |
| 6 | Ограничение алкоголя | 9.0 |
| 7 | Регулярный чекап | 9.0 |
| 8 | Скрининг | 9.0 |
| 9 | Вакцинация | 9.0 |
| 10 | Гигиена зубов | 9.0 |

---

## Ссылки на Источники

### Whoop Экосистема
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

### Дополнительные
- https://sleepfoundation.org
- https://www.cdc.gov
- https://www.heart.org
- https://www.who.int
- https://www.questdiagnostics.com

---

*Document Version: 1.0*
*Last Updated: 2024*
*Total Interventions: 93*
