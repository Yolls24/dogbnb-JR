# 🐶 Airbnb for Dog Walks

Welcome to **Airbnb for Dog Walks**, a fun and functional Ruby on Rails app where dog owners can find trusted dog sitters to walk their furry friends in exchange for some cash-money. 💸  
It’s a business idea so good, even VCs will be begging to invest.

---

## 🧠 The Pitch

This app connects **dog sitters** and **dog owners**. The goal is simple: match people who want their dog walked with people willing to walk dogs — all based on city, availability, and more!

---

## 🏗️ Tech Stack

- **Ruby** (recommended version: `3.x`)
- **Rails** (recommended version: `7.x`)
- Database: `SQLite3` (for development), `PostgreSQL` (for production)
- Gem dependencies: `faker`, `pry`, etc.

---

## 📊 Database Models

### 🧍 Dogsitter
- Example attribute: `name` (string)
- ➕ Belongs to a `City`
- ➕ Has many `Strolls`
- ➕ Has many `Dogs` through `Strolls`

### 🐕 Dog
- Example attribute: `name` (string)
- ➕ Belongs to a `City`
- ➕ Has many `Strolls`
- ➕ Has many `Dogsitters` through `Strolls`

### 🚶 Stroll
- A join table between `Dogsitter` and `Dog`
- ➕ Belongs to a `Dog`
- ➕ Belongs to a `Dogsitter`

### 🏙️ City
- `city_name` (string)
- ➕ Has many `Dogs`
- ➕ Has many `Dogsitters`

---

## 🌱 Seeding the Database

Use the `seeds.rb` file to populate your database with fake data using `Faker`:

- Create multiple cities
- Create several dogsitters and dogs in each city
- Link them together through strolls (dog walks)

To seed the database, run:

```bash
rails db:seed
