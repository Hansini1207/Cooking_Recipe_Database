## Cooking_Recipe_Database

# Project Overview
The Cooking Recipes Database is a SQL-based system designed to manage and organize a collection of cooking recipes. It provides a relational structure to store information about recipes, ingredients, measurements, and preparation steps. This project can be used as a foundation for food blogs, recipe websites, or mobile apps for managing and displaying recipes.
## Project Structure
This database consists of the following tables:

# Food_Category: Contains categories for recipes.
Stores different categories of food (e.g., Vegetarian, Non-Vegetarian, Desserts).
 # Key Columns:
  food_category_id (Primary Key)
  food_category_name (e.g., "Vegetarian")
  
# Course: Defines meal types (e.g., Breakfast, Lunch, Dinner).
Stores types of meals (e.g., Breakfast, Lunch, Dinner).
  # Key Columns:
  course_id (Primary Key)
  course_name (e.g., "Lunch")
  time_of_day (e.g., "Breakfast", "Dinner")
  
# Ingredients: Contains all ingredients used in recipes.
Stores the list of ingredients used in recipes (e.g., Tomatoes, Chicken, Spices).
  # Key Columns:
  ingredient_id (Primary Key)
  ingredient_name (e.g., "Tomato", "Garlic")
  
# Measurements: Defines measurement units (e.g., grams, tablespoons).
Stores units of measurement for ingredients (e.g., grams, cups, tablespoons).
  # Key Columns:
  measurement_id (Primary Key)
  measurement_name (e.g., "grams", "cups")

# Recipe: Stores details for each recipe.
Stores the details of each recipe, including course, category, description, and timing information.
  # Key Columns:
  recipe_id (Primary Key)
  course_id (Foreign Key)
  food_category_id (Foreign Key)
  recipe_name (e.g., "Pasta Alfredo")
  recipe_description (Detailed recipe instructions)
  cuisine (e.g., "Italian")
  prep_time and cook_time (for cooking duration)
  
# Quantity: A junction table for connecting ingredients, measurements, and recipes.
A join table that connects ingredients to recipes with measurements and quantities.
  # Key Columns:
  quantity_id (Primary Key)
  recipe_id (Foreign Key)
  ingredient_id (Foreign Key)
  ingredient_measurement_id (Foreign Key)
  ingredient_quantity (e.g., 2 cups)
  
# Recipe_Steps: Instructions for recipes.
Stores the step-by-step instructions for each recipe.
  # Key Columns:
  step_id (Primary Key)
  recipe_id (Foreign Key)
  step_number (Order of the steps)
  step_description (Detailed instruction)
