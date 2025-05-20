create table persons (
 person_id int primary key AUTO_INCREMENT,
 national_id varchar(10) unique not null,
 name varchar(50) not null
);

create table students (
    student_id int primary key auto_increment,
    person_id int not null,
    student_number varchar(8) unique not null,
    major varchar(50) not null,
    foreign key (person_id) references persons(person_id)
);

create table professors (
    professor_id int primary key auto_increment,
    person_id int not null,
    employee_number varchar(15) unique not null,
    department varchar(50) not null,
    academic_rank varchar(50) not null,
    foreign key (person_id) references persons(person_id)
);



create table food_item (
    food_id int primary key auto_increment,
    food_name varchar(50) not null
);

create table daily_menus (
    menu_id int primary key auto_increment
);

create table menu_foods (
    menu_food_id int primary key auto_increment,
    menu_id int not null,
    food_id int not null,
    price int not null,
    foreign key (menu_id) references daily_menus(menu_id),
    foreign key (food_id) references food_item(food_id)
);



create table orders (
    order_id int primary key auto_increment,
    person_id int not null,
    foreign key (person_id) references persons(person_id)
);

create table order_items (
    order_item_id int primary key auto_increment,
    order_id int not null,
    meneu_food_id int not null,
    quantity int not null,
    foreign key (order_id) references orders(order_id),
    foreign key (meneu_food_id) references menu_foods(menu_food_id)
);
