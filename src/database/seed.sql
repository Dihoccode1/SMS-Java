INSERT INTO students (student_id, first_name, last_name)
VALUES
    ('SV0001', 'Georgine', 'Neads'),
    ('SV0002', 'Constantine', 'Crammy'),
    ('SV0003', 'Isabelle', 'Towhey'),
    ('SV0004', 'Berkeley', 'Dongall'),
    ('SV0005', 'Stevana', 'Douse'),
    ('SV0006', 'Minnie', 'Bullock'),
    ('SV0007', 'Ferris', 'Carncross'),
    ('SV0008', 'Wendy', 'Allon'),
    ('SV0009', 'Mata', 'Dictus'),
    ('SV0010', 'Milena', 'Lynam'),
    ('SV0011', 'Wandis', 'Emmatt'),
    ('SV0012', 'Gizela', 'Springtorp'),
    ('SV0013', 'Meridel', 'McGirl'),
    ('SV0014', 'Vic', 'Gress'),
    ('SV0015', 'Parke', 'Hawlgarth'),
    ('SV0016', 'Ellwood', 'Portwain'),
    ('SV0017', 'Wildon', 'Loseke'),
    ('SV0018', 'Faye', 'Birtonshaw'),
    ('SV0019', 'Juieta', 'Tims'),
    ('SV0020', 'Abrahan', 'Coneau')
ON CONFLICT (student_id) DO NOTHING;

INSERT INTO subjects (subject_code, subject_name)
VALUES
    ('JAVA', 'Java Programming'),
    ('DATABASE', 'Database Systems'),
    ('DSA', 'Data Structures and Algorithms')
ON CONFLICT (subject_code) DO NOTHING;

INSERT INTO grades (student_id, subject_code, score)
VALUES
    -- SV0001
    ('SV0001', 'JAVA', 9.50),
    ('SV0001', 'DATABASE', 8.00),
    ('SV0001', 'DSA', 8.50),

    -- SV0002
    ('SV0002', 'JAVA', 7.50),
    ('SV0002', 'DATABASE', 8.25),
    ('SV0002', 'DSA', 6.75),

    -- SV0003
    ('SV0003', 'JAVA', 9.00),
    ('SV0003', 'DATABASE', 9.25),
    ('SV0003', 'DSA', 9.50),

    -- SV0004
    ('SV0004', 'JAVA', 5.50),
    ('SV0004', 'DATABASE', 6.00),
    ('SV0004', 'DSA', 5.75),

    -- SV0005
    ('SV0005', 'JAVA', 4.00),
    ('SV0005', 'DATABASE', 5.25),
    ('SV0005', 'DSA', 3.50),

    -- SV0006
    ('SV0006', 'JAVA', 8.50),
    ('SV0006', 'DATABASE', 7.75),
    ('SV0006', 'DSA', 8.25),

    -- SV0007
    ('SV0007', 'JAVA', 6.50),
    ('SV0007', 'DATABASE', 7.00),
    ('SV0007', 'DSA', 6.75),

    -- SV0008
    ('SV0008', 'JAVA', 9.75),
    ('SV0008', 'DATABASE', 9.50),
    ('SV0008', 'DSA', 10.00),

    -- SV0009
    ('SV0009', 'JAVA', 3.50),
    ('SV0009', 'DATABASE', 4.25),
    ('SV0009', 'DSA', 4.00),

    -- SV0010
    ('SV0010', 'JAVA', 7.25),
    ('SV0010', 'DATABASE', 7.50),
    ('SV0010', 'DSA', 8.00),

    -- SV0011
    ('SV0011', 'JAVA', 6.00),
    ('SV0011', 'DATABASE', 5.50),
    ('SV0011', 'DSA', 6.25),

    -- SV0012
    ('SV0012', 'JAVA', 8.75),
    ('SV0012', 'DATABASE', 9.00),
    ('SV0012', 'DSA', 8.50),

    -- SV0013
    ('SV0013', 'JAVA', 5.00),
    ('SV0013', 'DATABASE', 5.75),
    ('SV0013', 'DSA', 6.00),

    -- SV0014
    ('SV0014', 'JAVA', 7.00),
    ('SV0014', 'DATABASE', 6.50),
    ('SV0014', 'DSA', 7.25),

    -- SV0015
    ('SV0015', 'JAVA', 4.50),
    ('SV0015', 'DATABASE', 4.75),
    ('SV0015', 'DSA', 5.00),

    -- SV0016: Thiếu DSA
    ('SV0016', 'JAVA', 8.00),
    ('SV0016', 'DATABASE', 7.50),

    -- SV0017: Thiếu DATABASE
    ('SV0017', 'JAVA', 6.50),
    ('SV0017', 'DSA', 7.00),

    -- SV0018: Thiếu JAVA
    ('SV0018', 'DATABASE', 9.00),
    ('SV0018', 'DSA', 8.75),

    -- SV0019: Chỉ có JAVA
    ('SV0019', 'JAVA', 5.50)

    -- SV0020: Chưa có điểm

ON CONFLICT (student_id, subject_code) DO NOTHING;