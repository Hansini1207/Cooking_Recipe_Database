CREATE DATABASE cooking_recipes;
USE cooking_recipes;
-- Food Category Table
CREATE TABLE Food_Category (
    food_category_id INT AUTO_INCREMENT PRIMARY KEY,
    food_category_name VARCHAR(255)
);

-- Course Table
CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255),
    time_of_day VARCHAR(255)  -- Example: Breakfast, Lunch, Dinner, etc.
);

-- Ingredients Table
CREATE TABLE Ingredients (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(255)
);

-- Measurements Table
CREATE TABLE Measurements (
    measurement_id INT AUTO_INCREMENT PRIMARY KEY,
    measurement_name VARCHAR(50)  -- Example: grams, cups, tablespoons, etc.
);

-- Recipe Table
CREATE TABLE Recipe (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    food_category_id INT,
    recipe_name VARCHAR(255),
    recipe_description TEXT,
    cuisine VARCHAR(255),
    prep_time TIME,
    cook_time TIME,
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (food_category_id) REFERENCES Food_Category(food_category_id)
);

-- Quantity Table (Join Table for Ingredients and Measurements)
CREATE TABLE Quantity (
    quantity_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT,
    ingredient_id INT,
    ingredient_measurement_id INT,
    ingredient_quantity FLOAT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
    FOREIGN KEY (ingredient_measurement_id) REFERENCES Measurements(measurement_id)
);

-- Recipe Steps Table
CREATE TABLE Recipe_Steps (
    step_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT,
    step_number INT,
    step_description TEXT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id)
);

-- Data
-- Insert Food Categories into Food_Category table
INSERT INTO Food_Category (food_category_name) VALUES ('Vegan');
INSERT INTO Food_Category (food_category_name) VALUES ('Vegetarian');
INSERT INTO Food_Category (food_category_name) VALUES ('Non-Vegetarian');
INSERT INTO Food_Category (food_category_name) VALUES ('Gluten-Free');
INSERT INTO Food_Category (food_category_name) VALUES ('Dairy-Free');
INSERT INTO Food_Category (food_category_name) VALUES ('Paleo');
INSERT INTO Food_Category (food_category_name) VALUES ('Low-Carb');
INSERT INTO Food_Category (food_category_name) VALUES ('Keto');
INSERT INTO Food_Category (food_category_name) VALUES ('Raw');
INSERT INTO Food_Category (food_category_name) VALUES ('Desserts');
INSERT INTO Food_Category (food_category_name) VALUES ('High-Protein');
INSERT INTO Food_Category (food_category_name) VALUES ('Sugar-Free');
INSERT INTO Food_Category (food_category_name) VALUES ('Whole30');
INSERT INTO Food_Category (food_category_name) VALUES ('Mediterranean');
INSERT INTO Food_Category (food_category_name) VALUES ('Asian');
INSERT INTO Food_Category (food_category_name) VALUES ('American');
INSERT INTO Food_Category (food_category_name) VALUES ('Mexican');
INSERT INTO Food_Category (food_category_name) VALUES ('Italian');
INSERT INTO Food_Category (food_category_name) VALUES ('Indian');
INSERT INTO Food_Category (food_category_name) VALUES ('Chinese');
INSERT INTO Food_Category (food_category_name) VALUES ('Japanese');
INSERT INTO Food_Category (food_category_name) VALUES ('French');
INSERT INTO Food_Category (food_category_name) VALUES ('Spanish');
INSERT INTO Food_Category (food_category_name) VALUES ('Greek');
INSERT INTO Food_Category (food_category_name) VALUES ('Turkish');
INSERT INTO Food_Category (food_category_name) VALUES ('Middle Eastern');
INSERT INTO Food_Category (food_category_name) VALUES ('Caribbean');
INSERT INTO Food_Category (food_category_name) VALUES ('BBQ');
INSERT INTO Food_Category (food_category_name) VALUES ('Soul Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Comfort Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Street Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Seafood');
INSERT INTO Food_Category (food_category_name) VALUES ('Healthy');
INSERT INTO Food_Category (food_category_name) VALUES ('Fast Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Casseroles');
INSERT INTO Food_Category (food_category_name) VALUES ('Soup');
INSERT INTO Food_Category (food_category_name) VALUES ('Salads');
INSERT INTO Food_Category (food_category_name) VALUES ('Sandwiches');
INSERT INTO Food_Category (food_category_name) VALUES ('Wraps');
INSERT INTO Food_Category (food_category_name) VALUES ('Smoothies');
INSERT INTO Food_Category (food_category_name) VALUES ('Juices');
INSERT INTO Food_Category (food_category_name) VALUES ('Pasta');
INSERT INTO Food_Category (food_category_name) VALUES ('Pizza');
INSERT INTO Food_Category (food_category_name) VALUES ('Baked Goods');
INSERT INTO Food_Category (food_category_name) VALUES ('Fried Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Noodles');
INSERT INTO Food_Category (food_category_name) VALUES ('Tacos');
INSERT INTO Food_Category (food_category_name) VALUES ('Tapas');
INSERT INTO Food_Category (food_category_name) VALUES ('Finger Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Grilled Food');
INSERT INTO Food_Category (food_category_name) VALUES ('Fermented Foods');
INSERT INTO Food_Category (food_category_name) VALUES ('Raw Foods');
INSERT INTO Food_Category (food_category_name) VALUES ('Health Shots');

INSERT INTO Course (course_name, time_of_day) VALUES ('Breakfast', 'Morning');
INSERT INTO Course (course_name, time_of_day) VALUES ('Lunch', 'Afternoon');
INSERT INTO Course (course_name, time_of_day) VALUES ('Dinner', 'Evening');
INSERT INTO Course (course_name, time_of_day) VALUES ('Snack', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Brunch', 'Late Morning');
INSERT INTO Course (course_name, time_of_day) VALUES ('Appetizer', 'Before Meals');
INSERT INTO Course (course_name, time_of_day) VALUES ('Dessert', 'After Meals');
INSERT INTO Course (course_name, time_of_day) VALUES ('Side Dish', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Salad', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Soup', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Main Course', 'Afternoon');
INSERT INTO Course (course_name, time_of_day) VALUES ('Light Meal', 'Afternoon');
INSERT INTO Course (course_name, time_of_day) VALUES ('Finger Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Tea Time', 'Evening');
INSERT INTO Course (course_name, time_of_day) VALUES ('Evening Snack', 'Evening');
INSERT INTO Course (course_name, time_of_day) VALUES ('Holiday Feast', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Special Occasion', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Quick Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Pre-Workout Meal', 'Morning');
INSERT INTO Course (course_name, time_of_day) VALUES ('Post-Workout Meal', 'Afternoon');
INSERT INTO Course (course_name, time_of_day) VALUES ('Lunchbox Meal', 'Afternoon');
INSERT INTO Course (course_name, time_of_day) VALUES ('Weekend Special', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Buffet', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Street Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Healthy Snack', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Superfood Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Party Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Gourmet', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Vegetarian Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Vegan Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Gluten-Free Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Low-Carb Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('High-Protein Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Low-Fat Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Spicy Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Comfort Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Asian Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Italian Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Mexican Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Middle Eastern Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Caribbean Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('BBQ Meal', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Soul Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Healthy Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Fast Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Fried Food', 'Anytime');
INSERT INTO Course (course_name, time_of_day) VALUES ('Grilled Food', 'Anytime');

INSERT INTO Ingredients (ingredient_name) VALUES ('Salt');
INSERT INTO Ingredients (ingredient_name) VALUES ('Pepper');
INSERT INTO Ingredients (ingredient_name) VALUES ('Olive Oil');
INSERT INTO Ingredients (ingredient_name) VALUES ('Garlic');
INSERT INTO Ingredients (ingredient_name) VALUES ('Onion');
INSERT INTO Ingredients (ingredient_name) VALUES ('Tomato');
INSERT INTO Ingredients (ingredient_name) VALUES ('Lemon');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cucumber');
INSERT INTO Ingredients (ingredient_name) VALUES ('Bell Pepper');
INSERT INTO Ingredients (ingredient_name) VALUES ('Carrot');
INSERT INTO Ingredients (ingredient_name) VALUES ('Spinach');
INSERT INTO Ingredients (ingredient_name) VALUES ('Lettuce');
INSERT INTO Ingredients (ingredient_name) VALUES ('Chicken Breast');
INSERT INTO Ingredients (ingredient_name) VALUES ('Beef');
INSERT INTO Ingredients (ingredient_name) VALUES ('Pork');
INSERT INTO Ingredients (ingredient_name) VALUES ('Tofu');
INSERT INTO Ingredients (ingredient_name) VALUES ('Rice');
INSERT INTO Ingredients (ingredient_name) VALUES ('Pasta');
INSERT INTO Ingredients (ingredient_name) VALUES ('Quinoa');
INSERT INTO Ingredients (ingredient_name) VALUES ('Potato');
INSERT INTO Ingredients (ingredient_name) VALUES ('Sweet Potato');
INSERT INTO Ingredients (ingredient_name) VALUES ('Butter');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cheese');
INSERT INTO Ingredients (ingredient_name) VALUES ('Milk');
INSERT INTO Ingredients (ingredient_name) VALUES ('Eggs');
INSERT INTO Ingredients (ingredient_name) VALUES ('Bread');
INSERT INTO Ingredients (ingredient_name) VALUES ('Flour');
INSERT INTO Ingredients (ingredient_name) VALUES ('Sugar');
INSERT INTO Ingredients (ingredient_name) VALUES ('Honey');
INSERT INTO Ingredients (ingredient_name) VALUES ('Vanilla Extract');
INSERT INTO Ingredients (ingredient_name) VALUES ('Baking Powder');
INSERT INTO Ingredients (ingredient_name) VALUES ('Baking Soda');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cinnamon');
INSERT INTO Ingredients (ingredient_name) VALUES ('Nutmeg');
INSERT INTO Ingredients (ingredient_name) VALUES ('Paprika');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cumin');
INSERT INTO Ingredients (ingredient_name) VALUES ('Chili Powder');
INSERT INTO Ingredients (ingredient_name) VALUES ('Turmeric');
INSERT INTO Ingredients (ingredient_name) VALUES ('Ginger');
INSERT INTO Ingredients (ingredient_name) VALUES ('Oregano');
INSERT INTO Ingredients (ingredient_name) VALUES ('Basil');
INSERT INTO Ingredients (ingredient_name) VALUES ('Thyme');
INSERT INTO Ingredients (ingredient_name) VALUES ('Rosemary');
INSERT INTO Ingredients (ingredient_name) VALUES ('Parsley');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cilantro');
INSERT INTO Ingredients (ingredient_name) VALUES ('Apple');
INSERT INTO Ingredients (ingredient_name) VALUES ('Banana');
INSERT INTO Ingredients (ingredient_name) VALUES ('Strawberry');
INSERT INTO Ingredients (ingredient_name) VALUES ('Blueberry');
INSERT INTO Ingredients (ingredient_name) VALUES ('Mango');
INSERT INTO Ingredients (ingredient_name) VALUES ('Avocado');
INSERT INTO Ingredients (ingredient_name) VALUES ('Almonds');
INSERT INTO Ingredients (ingredient_name) VALUES ('Walnuts');
INSERT INTO Ingredients (ingredient_name) VALUES ('Peanuts');
INSERT INTO Ingredients (ingredient_name) VALUES ('Cashews');
INSERT INTO Ingredients (ingredient_name) VALUES ('Chia Seeds');

INSERT INTO Measurements (measurement_name) VALUES ('Gram');
INSERT INTO Measurements (measurement_name) VALUES ('Kilogram');
INSERT INTO Measurements (measurement_name) VALUES ('Milliliter');
INSERT INTO Measurements (measurement_name) VALUES ('Liter');
INSERT INTO Measurements (measurement_name) VALUES ('Teaspoon');
INSERT INTO Measurements (measurement_name) VALUES ('Tablespoon');
INSERT INTO Measurements (measurement_name) VALUES ('Cup');
INSERT INTO Measurements (measurement_name) VALUES ('Ounce');
INSERT INTO Measurements (measurement_name) VALUES ('Pound');
INSERT INTO Measurements (measurement_name) VALUES ('Quart');
INSERT INTO Measurements (measurement_name) VALUES ('Gallon');
INSERT INTO Measurements (measurement_name) VALUES ('Pinch');
INSERT INTO Measurements (measurement_name) VALUES ('Dash');
INSERT INTO Measurements (measurement_name) VALUES ('Bunch');
INSERT INTO Measurements (measurement_name) VALUES ('Slice');
INSERT INTO Measurements (measurement_name) VALUES ('Clove');
INSERT INTO Measurements (measurement_name) VALUES ('Piece');
INSERT INTO Measurements (measurement_name) VALUES ('Cupful');
INSERT INTO Measurements (measurement_name) VALUES ('Handful');
INSERT INTO Measurements (measurement_name) VALUES ('Jar');
INSERT INTO Measurements (measurement_name) VALUES ('Block');
INSERT INTO Measurements (measurement_name) VALUES ('Can');
INSERT INTO Measurements (measurement_name) VALUES ('Bottle');
INSERT INTO Measurements (measurement_name) VALUES ('Packet');
INSERT INTO Measurements (measurement_name) VALUES ('Bundle');
INSERT INTO Measurements (measurement_name) VALUES ('Pinch');
INSERT INTO Measurements (measurement_name) VALUES ('Sprinkle');
INSERT INTO Measurements (measurement_name) VALUES ('Drizzle');
INSERT INTO Measurements (measurement_name) VALUES ('Splash');
INSERT INTO Measurements (measurement_name) VALUES ('Sprig');
INSERT INTO Measurements (measurement_name) VALUES ('Teaspoonful');
INSERT INTO Measurements (measurement_name) VALUES ('Tablespoonful');
INSERT INTO Measurements (measurement_name) VALUES ('Mug');
INSERT INTO Measurements (measurement_name) VALUES ('Bowl');
INSERT INTO Measurements (measurement_name) VALUES ('Piece');
INSERT INTO Measurements (measurement_name) VALUES ('Pint');
INSERT INTO Measurements (measurement_name) VALUES ('Carton');
INSERT INTO Measurements (measurement_name) VALUES ('Whole');
INSERT INTO Measurements (measurement_name) VALUES ('Leaf');
INSERT INTO Measurements (measurement_name) VALUES ('Handful');
INSERT INTO Measurements (measurement_name) VALUES ('Package');
INSERT INTO Measurements (measurement_name) VALUES ('Bag');
INSERT INTO Measurements (measurement_name) VALUES ('Roll');
INSERT INTO Measurements (measurement_name) VALUES ('Loaf');
INSERT INTO Measurements (measurement_name) VALUES ('Pinch');
INSERT INTO Measurements (measurement_name) VALUES ('Stick');
INSERT INTO Measurements (measurement_name) VALUES ('Cupful');
INSERT INTO Measurements (measurement_name) VALUES ('Sprig');
INSERT INTO Measurements (measurement_name) VALUES ('Mugful');
INSERT INTO Measurements (measurement_name) VALUES ('Small');


INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Vegan Salad', 'A fresh and healthy salad with vegetables and fruits.', 'Vegan', '00:15:00', '00:10:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Grilled Chicken', 'Grilled chicken breast with herbs and spices.', 'American', '00:10:00', '00:25:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Spaghetti Bolognese', 'Classic Italian pasta with meat sauce.', 'Italian', '00:20:00', '00:45:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Tacos', 'Mexican tacos with seasoned beef and fresh toppings.', 'Mexican', '00:10:00', '00:15:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Fruit Salad', 'A refreshing mix of seasonal fruits with a citrus dressing.', 'Vegan', '00:10:00', '00:05:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Pork Chops', 'Juicy pork chops with a side of mashed potatoes.', 'American', '00:15:00', '00:30:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Carbonara', 'Classic pasta with eggs, cheese, pancetta, and pepper.', 'Italian', '00:10:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Chicken Burritos', 'Delicious chicken burritos with beans, rice, and salsa.', 'Mexican', '00:15:00', '00:25:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Green Smoothie', 'A nutritious green smoothie made with spinach, apple, and banana.', 'Vegan', '00:05:00', '00:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Beef Steak', 'Perfectly seared beef steak with garlic butter.', 'American', '00:10:00', '00:15:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Lasagna', 'Classic lasagna with layers of pasta, sauce, and cheese.', 'Italian', '00:30:00', '01:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Fish Tacos', 'Tacos with crispy fish fillets and a tangy sauce.', 'Mexican', '00:10:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Hummus', 'A creamy dip made with chickpeas, tahini, and olive oil.', 'Vegan', '00:10:00', '00:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'BBQ Ribs', 'Tender BBQ ribs with a smoky glaze and sides of corn and coleslaw.', 'American', '00:20:00', '02:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Fettuccine Alfredo', 'Creamy pasta with Alfredo sauce and parmesan.', 'Italian', '00:15:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Carnitas', 'Slow-cooked shredded pork for tacos or burritos.', 'Mexican', '00:15:00', '03:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Vegan Burger', 'A hearty vegan burger with black beans and quinoa.', 'Vegan', '00:20:00', '00:10:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Grilled Shrimp', 'Shrimp grilled with garlic and lemon, served with rice.', 'American', '00:10:00', '00:10:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Penne Arrabbiata', 'Pasta in a spicy tomato sauce with garlic and chili.', 'Italian', '00:10:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Enchiladas', 'Corn tortillas filled with chicken, cheese, and red sauce.', 'Mexican', '00:25:00', '00:30:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Chia Pudding', 'A creamy chia pudding with almond milk and honey.', 'Vegan', '00:05:00', '00:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Roast Chicken', 'Whole chicken roasted with rosemary and garlic.', 'American', '00:10:00', '01:30:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Ravioli', 'Pasta stuffed with ricotta and spinach, served with marinara.', 'Italian', '00:20:00', '00:30:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Fajitas', 'Sizzling fajitas with beef or chicken, peppers, and onions.', 'Mexican', '00:15:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Smoothie Bowl', 'A thick smoothie topped with fruits and granola.', 'Vegan', '00:10:00', '00:05:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Meatloaf', 'Classic meatloaf made with beef and served with mashed potatoes.', 'American', '00:20:00', '01:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Eggplant Parmesan', 'Breaded and baked eggplant topped with marinara and cheese.', 'Italian', '00:20:00', '00:45:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Tamales', 'Mexican tamales filled with meats, cheese, or vegetables.', 'Mexican', '00:30:00', '02:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Vegan Tacos', 'Tacos with lentils, avocado, and salsa.', 'Vegan', '00:15:00', '00:10:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'BBQ Chicken', 'Tender BBQ chicken with a smoky glaze and roasted vegetables.', 'American', '00:15:00', '00:40:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Margherita Pizza', 'Classic pizza topped with tomatoes, mozzarella, and basil.', 'Italian', '00:20:00', '00:15:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Burrito Bowl', 'Burrito ingredients served in a bowl without the tortilla.', 'Mexican', '00:15:00', '00:10:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (1, 1, 'Avocado Toast', 'Simple and tasty avocado spread on toast with a sprinkle of salt.', 'Vegan', '00:05:00', '00:00:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (2, 2, 'Fish and Chips', 'Crispy battered fish with golden fries.', 'American', '00:15:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (3, 3, 'Pasta Primavera', 'Pasta with fresh vegetables in a garlic sauce.', 'Italian', '00:15:00', '00:20:00');
INSERT INTO Recipe (course_id, food_category_id, recipe_name, recipe_description, cuisine, prep_time, cook_time)
VALUES (4, 4, 'Quesadillas', 'Cheese and meat-filled tortillas, grilled to perfection.', 'Mexican', '00:10:00', '00:15:00');



INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (1, 1, 1, 1.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (2, 2, 2, 2);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (3, 3, 3, 2.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (4, 4, 4, 1);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (5, 5, 5, 3);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (6, 6, 6, 2.1);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (7, 7, 7, 150);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (8, 8, 8, 1);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (9, 9, 1, 1.25);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (10, 10, 2, 2.2);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (11, 11, 3, 3);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (12, 12, 4, 5.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (13, 13, 5, 1.8);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (14, 14, 6, 1.9);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (15, 15, 7, 250);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (16, 16, 8, 0.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (17, 17, 1, 1.8);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (18, 18, 2, 1.6);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (19, 19, 3, 2.3);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (20, 20, 4, 3.4);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (21, 21, 5, 0.8);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (22, 22, 6, 4);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (23, 23, 7, 200);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (24, 24, 8, 2);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (25, 25, 1, 3.2);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (26, 26, 2, 1.4);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (27, 27, 3, 2.6);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (28, 28, 4, 4.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (29, 29, 5, 2.1);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (30, 30, 6, 0.9);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (31, 31, 7, 350);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (32, 32, 8, 3.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (33, 33, 1, 1.7);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (34, 34, 2, 2.4);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (35, 35, 3, 3.5);
INSERT INTO Quantity (recipe_id, ingredient_id, ingredient_measurement_id, ingredient_quantity) VALUES (36, 36, 4, 1.2);


INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (1, 1, 'Preheat the oven to 350°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (1, 2, 'Mix flour and sugar in a bowl.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (1, 3, 'Add eggs and whisk together.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (1, 4, 'Pour batter into the prepared pan.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (1, 5, 'Bake for 30 minutes or until golden brown.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (2, 1, 'Chop vegetables into small pieces.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (2, 2, 'Heat oil in a pan.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (2, 3, 'Sauté vegetables until softened.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (2, 4, 'Add seasoning and stir well.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (2, 5, 'Serve hot with rice or bread.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (3, 1, 'Boil pasta in salted water.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (3, 2, 'In a separate pan, heat olive oil.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (3, 3, 'Sauté garlic and tomatoes until softened.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (3, 4, 'Toss the cooked pasta with the sauce.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (3, 5, 'Garnish with fresh basil.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (4, 1, 'Preheat grill to medium-high heat.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (4, 2, 'Season chicken breasts with salt and pepper.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (4, 3, 'Grill the chicken for 6-8 minutes per side.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (4, 4, 'Serve with a side of roasted vegetables.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (5, 1, 'Preheat oven to 375°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (5, 2, 'Layer the pizza dough on a baking sheet.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (5, 3, 'Spread sauce evenly on the dough.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (5, 4, 'Add cheese and toppings.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (5, 5, 'Bake for 15-20 minutes.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (6, 1, 'Wash and peel the potatoes.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (6, 2, 'Cut the potatoes into wedges.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (6, 3, 'Toss the potatoes with olive oil and spices.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (6, 4, 'Roast at 400°F for 25-30 minutes.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (7, 1, 'Preheat the oven to 350°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (7, 2, 'Mix ground beef with breadcrumbs and spices.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (7, 3, 'Shape the mixture into meatballs.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (7, 4, 'Bake the meatballs for 20 minutes.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (7, 5, 'Serve with spaghetti and marinara sauce.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (8, 1, 'Preheat the oven to 375°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (8, 2, 'Spread a layer of mashed potatoes in a baking dish.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (8, 3, 'Add cooked ground meat on top of potatoes.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (8, 4, 'Top with more mashed potatoes.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (8, 5, 'Bake for 20 minutes.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (9, 1, 'Preheat oven to 350°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (9, 2, 'Mix flour, sugar, and cocoa powder.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (9, 3, 'Add eggs, oil, and milk, and mix until smooth.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (9, 4, 'Pour the batter into a greased pan.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (9, 5, 'Bake for 35 minutes.');

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (10, 1, 'Preheat the oven to 400°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (10, 2, 'Cut the chicken into strips.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (10, 3, 'Toss the chicken with olive oil and spices.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (10, 4, 'Arrange on a baking sheet and bake for 20 minutes.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (10, 5, 'Serve with a dipping sauce.');

-- Repeating for 40 more recipes...

INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (11, 1, 'Preheat the oven to 375°F.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (11, 2, 'Mix ingredients in a bowl.');
INSERT INTO Recipe_Steps (recipe_id, step_number, step_description) VALUES (11, 3, 'Bake for 25 minutes.');
-- Add remaining rows as needed for other recipe steps


-- SELECT * FROM Recipe;
-- SELECT * FROM Food_Category;
-- SELECT * FROM Course;
-- SELECT * FROM Ingredients;
-- SELECT * FROM Quantity;
-- SELECT * FROM Measurements;
-- SELECT * FROM Recipe_Steps;

-- Queries

-- 1. "Show me all recipes available on the blog." - Displays all recipes with their cuisine and time details.
SELECT recipe_name, cuisine, prep_time, cook_time FROM Recipe;
SELECT CONCAT(COUNT(recipe_id), ' Recipes available.') AS total_recipes FROM Recipe;

-- 2. "I want to see only vegan recipes."- User filters recipes by food category (Vegan).
SELECT recipe_name FROM Recipe 
WHERE food_category_id = (SELECT food_category_id FROM Food_Category WHERE food_category_name = 'Vegan');


-- 3. "What can I cook for breakfast?" - Lists all recipes tagged under breakfast.
SELECT recipe_name FROM Recipe
WHERE course_id = (SELECT course_id FROM Course WHERE course_name = 'Breakfast');


-- 4. "What recipes can I cook in 20 minutes or less?"- User filters recipes based on cooking time. Shows recipes with total prep + cook time ≤ 20 minutes.
SELECT recipe_name FROM Recipe
WHERE TIME_TO_SEC(prep_time) + TIME_TO_SEC(cook_time) <= 1200;


-- 5. "I want to cook Pasta, show me its details."- User searches for a specific recipe. Fetches details of recipes that have "Pasta" in their name.
SELECT recipe_name, recipe_description, cuisine, prep_time, cook_time
FROM Recipe
WHERE recipe_name LIKE '%Pasta%';


-- 6. "What ingredients do I need to make 'Fish Tacos'?"- User wants a list of ingredients for a specific recipe.
SELECT Ingredients.ingredient_name, Quantity.ingredient_quantity, Measurements.measurement_name
FROM Quantity
JOIN Ingredients ON Quantity.ingredient_id = Ingredients.ingredient_id
JOIN Measurements ON Quantity.ingredient_measurement_id = Measurements.measurement_id
WHERE recipe_id = (SELECT recipe_id FROM Recipe WHERE recipe_name = 'Fish Tacos');


-- 7. "Which recipes use 'Tomato' as an ingredient?"- Display all recipes that include a specific ingredient.
SELECT Recipe.recipe_name 
FROM Recipe
JOIN Quantity ON Recipe.recipe_id = Quantity.recipe_id
JOIN Ingredients ON Quantity.ingredient_id = Ingredients.ingredient_id
WHERE Ingredients.ingredient_name = 'Tomato';


-- 8. "What are the top 5 cuisines with the most recipes?"- Sort and Show the most popular cuisines.
SELECT cuisine, COUNT(*) AS total_recipes
FROM Recipe
GROUP BY cuisine
ORDER BY total_recipes DESC
LIMIT 5;


-- 9. "Which recipe takes the longest to cook?"- Find the most time-consuming recipe. 
SELECT recipe_name, ADDTIME(prep_time, cook_time) AS total_time
FROM Recipe
ORDER BY total_time DESC
LIMIT 1;


-- 10. "I want to show all recipes that use 'cups' as a unit of measurement for ingredients."- List all recipes that use a specific measurement.
SELECT Recipe.recipe_name, Ingredients.ingredient_name, Quantity.ingredient_quantity
FROM Quantity
JOIN Ingredients ON Quantity.ingredient_id = Ingredients.ingredient_id
JOIN Measurements ON Quantity.ingredient_measurement_id = Measurements.measurement_id
JOIN Recipe ON Quantity.recipe_id = Recipe.recipe_id
WHERE Measurements.measurement_name = 'teaspoon';


-- 11. "Show me a step-by-step guide for making 'Grilled Chicken'."- User requests cooking instructions for a recipe.
SELECT step_number, step_description 
FROM Recipe_Steps
WHERE recipe_id = (SELECT recipe_id FROM Recipe WHERE recipe_name = 'Grilled Chicken')
ORDER BY step_number ASC;


-- 12. "Which ingredients are used most often in recipes?"- Finds the 7 most commonly used ingredients.
SELECT Ingredients.ingredient_name, COUNT(*) AS usage_count
FROM Quantity
JOIN Ingredients ON Quantity.ingredient_id = Ingredients.ingredient_id
GROUP BY Ingredients.ingredient_name
ORDER BY usage_count DESC
LIMIT 7;


-- 13. "What are the top 3 fastest recipes to cook?"- Look for the shortest cooking time recipes.
SELECT recipe_name, cook_time 
FROM Recipe
ORDER BY cook_time ASC
LIMIT 3;


-- 14. "Suggest me some easy recipes with 5 or fewer ingredients."- Display recipes based on count of ingredients.
SELECT Recipe.recipe_name, COUNT(Quantity.ingredient_id) AS ingredient_count
FROM Recipe
JOIN Quantity ON Recipe.recipe_id = Quantity.recipe_id
GROUP BY Recipe.recipe_id
HAVING ingredient_count <= 5;


-- 15. "Show me all Italian recipes that are suitable for dinner."- User multiple filters recipes (by cuisine and meal type).
SELECT recipe_name FROM Recipe
WHERE cuisine = 'Italian' 
AND course_id = (SELECT course_id FROM Course WHERE course_name = 'Dinner');


-- 16. "I want to remove a recipe- Fruit Salad completely from the database."- Completely removes the recipe and its dependencies.
DELETE FROM Quantity WHERE recipe_id = (SELECT recipe_id FROM Recipe WHERE recipe_name = 'Fruit Salad');
DELETE FROM Recipe_Steps WHERE recipe_id = (SELECT recipe_id FROM Recipe WHERE recipe_name = 'Fruit Salad');
DELETE FROM Recipe WHERE recipe_name = 'Fruit Salad';


