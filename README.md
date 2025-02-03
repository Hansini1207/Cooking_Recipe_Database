# Cooking Recipes Database

##  Project Overview
The **Cooking Recipes Database** is a SQL-based system designed to efficiently manage and organize a collection of cooking recipes. It provides a relational structure to store information about **recipes, ingredients, measurements, and preparation steps**.  

This project can be used as a foundation for **food blogs**, recipe websites, or mobile apps for managing and displaying recipes.

---

## Project Structure
This database consists of the following tables:

### **1️. Food_Category (Stores categories for recipes)**
- **Purpose:** Defines different categories of food, such as Vegetarian, Non-Vegetarian, Desserts, etc.
- **Key Columns:**
  - `food_category_id` (Primary Key)
  - `food_category_name` (e.g., "Vegetarian", "Desserts")

---

### **2️. Course (Defines meal types such as Breakfast, Lunch, Dinner)**
- **Purpose:** Categorizes recipes based on meal type.
- **Key Columns:**
  - `course_id` (Primary Key)
  - `course_name` (e.g., "Lunch", "Dinner")
  - `time_of_day` (e.g., "Breakfast", "Dinner")

---

### **3️. Ingredients (Contains all ingredients used in recipes)**
- **Purpose:** Stores the list of ingredients used in recipes.
- **Key Columns:**
  - `ingredient_id` (Primary Key)
  - `ingredient_name` (e.g., "Tomato", "Garlic")

---

### **4️. Measurements (Defines measurement units)**
- **Purpose:** Stores units of measurement for ingredients.
- **Key Columns:**
  - `measurement_id` (Primary Key)
  - `measurement_name` (e.g., "grams", "cups", "tablespoons")

---

### **5️. Recipe (Stores details for each recipe)**
- **Purpose:** Stores essential details of each recipe, including its category, description, and timing information.
- **Key Columns:**
  - `recipe_id` (Primary Key)
  - `course_id` (Foreign Key → Course)
  - `food_category_id` (Foreign Key → Food_Category)
  - `recipe_name` (e.g., "Pasta Alfredo")
  - `recipe_description` (Detailed recipe instructions)
  - `cuisine` (e.g., "Italian")
  - `prep_time` (Time required to prepare)
  - `cook_time` (Time required to cook)

---

### **6️. Quantity (A junction table for connecting ingredients, measurements, and recipes)**
- **Purpose:** Connects ingredients with recipes while specifying the measurement unit and quantity.
- **Key Columns:**
  - `quantity_id` (Primary Key)
  - `recipe_id` (Foreign Key → Recipe)
  - `ingredient_id` (Foreign Key → Ingredients)
  - `ingredient_measurement_id` (Foreign Key → Measurements)
  - `ingredient_quantity` (e.g., 2 cups)

---

### **7️. Recipe_Steps (Stores instructions for recipes)**
- **Purpose:** Stores step-by-step cooking instructions for each recipe.
- **Key Columns:**
  - `step_id` (Primary Key)
  - `recipe_id` (Foreign Key → Recipe)
  - `step_number` (Step order)
  - `step_description` (Detailed cooking instruction)

## Example Queries
-- 1. "Show me all recipes available on the blog." - Displays all recipes with their cuisine and time details.
-- 2. "I want to see only vegetarian recipes."- User filters recipes by food category (Vegetarian).
-- 3. "What can I cook for breakfast?" - Lists all recipes tagged under breakfast.
-- 4. "What recipes can I cook in 20 minutes or less?"- User filters recipes based on cooking time. Shows recipes with total prep + cook time ≤ 20 minutes.
-- 5. "I want to cook Pasta, show me its details."- User searches for a specific recipe. Fetches details of recipes that have "Pasta" in their name.
-- 6. "What ingredients do I need to make 'Chocolate Cake'?"- User wants a list of ingredients for a specific recipe.
-- 7. "Which recipes use 'Tomato' as an ingredient?"- Display all recipes that include a specific ingredient.
-- 8. "What are the top 5 cuisines with the most recipes?"- Sort and Show the most popular cuisines.
-- 9. "Which recipe takes the longest to cook?"- Find the most time-consuming recipe. 
-- 10. "I have only 2 ingredients: 'Eggs' and 'Milk'. What can I make?"- Find recipes that use specific ingredients.
-- 11. "Show me a step-by-step guide for making 'Pizza'."- User requests cooking instructions for a recipe.
-- 12. "Which ingredients are used most often in recipes?"- Finds the 5 most commonly used ingredients.
-- 13. "What are the top 3 fastest recipes to cook?"- Look for the shortest cooking time recipes.
-- 14. "Suggest me some easy recipes with 5 or fewer ingredients."- Display recipes based on count of ingredients.
-- 15. "Show me all Indian recipes that are suitable for dinner."- User multiple filters recipes (by cuisine and meal type).
-- 16. "I want to remove a recipe- Fruit Salad completely from the database."- Completely removes the recipe and its dependencies.

## Future Enhancements
- Build a simple web interface to display and search recipes.
- Allow users to submit their own recipes through a form.
- Integrate nutritional information for each recipe.
