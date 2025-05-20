INSERT INTO persons (person_id, national_id, name) VALUES
(1, '1234567890', 'علی محمدی'),
(2, '0987654321', 'فاطمه رحیمی'),
(3, '1122334455', 'محمد کریمی'),
(4, '5566778899', 'زهرا احمدی'),
(5, '9988776655', 'رضا حسینی');

INSERT INTO students (person_id, student_number, major) VALUES
(1, '40012345', 'علوم کامپیوتر'),
(3, '40054321', 'مهندسی برق'),
(5, '40098765', 'ریاضی');

INSERT INTO professors (person_id, employee_number, department, academic_rank) VALUES
(2, 'P1001', 'علوم کامپیوتر', 'استادیار'),
(4, 'P1002', 'مهندسی برق', 'دانشیار');

INSERT INTO food_item (food_id, food_name) VALUES
(1, 'قورمه سبزی'),
(2, 'چلو مرغ'),
(3, 'خورشت قیمه'),
(4, 'ماکارونی'),
(5, 'عدس پلو');

INSERT INTO daily_menus (menu_id) VALUES
(1),
(2),
(3);

INSERT INTO menu_foods (menu_id, food_id, price) VALUES
(1, 1, 50000),
(1, 2, 45000),
(1, 3, 48000);

INSERT INTO menu_foods (menu_id, food_id, price) VALUES
(2, 2, 46000),
(2, 4, 35000),
(2, 5, 40000);

INSERT INTO menu_foods (menu_id, food_id, price) VALUES
(3, 1, 52000),
(3, 3, 49000),
(3, 5, 42000);

INSERT INTO orders (order_id, person_id) VALUES
(1, 1),
(2, 3),
(3, 5);

INSERT INTO order_items (order_id, meneu_food_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1);

INSERT INTO order_items (order_id, meneu_food_id, quantity) VALUES
(2, 4, 1),
(2, 5, 3);

INSERT INTO order_items (order_id, meneu_food_id, quantity) VALUES
(3, 7, 1),
(3, 9, 2);