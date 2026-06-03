-- Views

-- View 1: Targets with diagnosis and genetic markers
CREATE VIEW view_targets_genetic_markers AS
SELECT t.target_id, t.age, t.early_symptoms, d.diagnosis_name, 
       g.genetic_category, tg.genetic_value
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
JOIN genetics g ON tg.genetics_id = g.genetics_id
WHERE tg.genetics_id = 1;

-- View 2: Count of targets per diagnosis with average age
CREATE VIEW view_diagnosis_stats AS
SELECT d.diagnosis_name, COUNT(t.target_id) AS target_count, 
       AVG(t.age) AS avg_age
FROM diagnosis d
JOIN targets t ON d.diagnosis_id = t.diagnosis_id
GROUP BY d.diagnosis_name
HAVING AVG(t.age) > 25;

-- View 3: Targets with early symptoms and high risk ethnicity
CREATE VIEW view_symptomatic_high_risk AS
SELECT t.target_id, t.age, d.diagnosis_name, tg.genetic_value AS ethnicity_risk
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
WHERE tg.genetics_id = 3 
AND tg.genetic_value = 'High Risk' 
AND t.early_symptoms = 'Yes';

-- View 4: Count of positive genetic testing results per diagnosis
CREATE VIEW view_positive_genetic_testing AS
SELECT d.diagnosis_name, COUNT(t.target_id) AS positive_test_count
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
JOIN target_genetics tg ON t.target_id = tg.target_id
WHERE tg.genetics_id = 4 AND tg.genetic_value = 'Positive'
GROUP BY d.diagnosis_name;

-- View 5: Targets older than the average age of their diagnosis group
CREATE VIEW view_older_than_avg AS
SELECT t.target_id, t.age, d.diagnosis_name
FROM targets t
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
WHERE t.age > (
    SELECT AVG(t2.age)
    FROM targets t2
    WHERE t2.diagnosis_id = t.diagnosis_id
);

-- View 6: Count of targets per lifestyle category and diagnosis
CREATE VIEW view_lifestyle_by_diagnosis AS
SELECT l.lifestyle_category, d.diagnosis_name, COUNT(t.target_id) AS target_count
FROM targets t
JOIN target_lifestyles tl ON t.target_id = tl.target_id
JOIN lifestyle l ON tl.lifestyle_id = l.lifestyle_id
JOIN diagnosis d ON t.diagnosis_id = d.diagnosis_id
GROUP BY l.lifestyle_category, d.diagnosis_name;