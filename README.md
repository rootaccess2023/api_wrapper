# API Wrapper

## Overview

Welcome to the API Wrapper repository! This project provides a unified interface to interact with three powerful APIs: Cats, Free Dictionary, and Nutrition Analysis. Built using Ruby on Rails, this wrapper combines these services to bring seamless integration and functionality to your applications.

### Features

- **Cats API:**
  - Get cat facts.

- **Free Dictionary API:**
  - Fetch word definitions.
  - Get phonetic information and examples for words.
  - Access detailed word meanings and origins.

- **Nutrition Analysis API:**
  - Analyze nutritional content of food items and recipes.
  - Extract food entities from unstructured text.
  - Get diet and health labels for food items.

### Support

This project is ad-free and free to use. If you enjoy the service and want to support its development and maintenance, please consider donating [here](https://www.buymeacoffee.com/rootaccess). Your support is greatly appreciated!

## Getting Started

### Prerequisites

- Ruby on Rails
- Bundler
- API keys for each of the integrated services

### Installation

1. **Clone the repository:**
    ```bash
    git clone <repository-url>
    ```
2. **Navigate to the project directory:**
    ```bash
    cd api_wrapper
    ```
3. **Install dependencies:**
    ```bash
    bundle install
    ```
4. **Set up the database:**
    ```bash
    rails db:create
    rails db:migrate
    ```
5. **Obtain API keys for the Cats, Free Dictionary, and Nutrition Analysis APIs.**
6. **Set up environment variables:**
    - Create a `.env` file in the root directory.
    - Add the required environment variables as specified in the `.env.example` file.
    ```env
    DICTIONARY_API_KEY=your_dictionary_api_key_here
    EDAMAM_APP_ID=your_nutrition_id_key_here
    EDAMAM_APP_KEY=your_nutriton_api_key_here
    ```
7. **Start the Rails server:**
    ```bash
    rails server
    ```
8. **Open your web browser and visit `http://localhost:3000` to view the application.**

## API Usage

### Cats API

#### Get Cat Facts

Endpoint: `/api/v1/cats/facts`

### Free Dictionary API

#### Fetch Word Definition

Endpoint: `/api/v1/dictionary/define?word={word}`

### Nutrition Analysis API

#### Analyze Food Item

Endpoint: `/api/nutrition?ingr={ingredient}&nutrition_type={nutrition_type}`


