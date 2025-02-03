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

---
