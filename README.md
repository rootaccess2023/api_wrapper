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

Endpoint: `/api/facts`

### Free Dictionary API

#### Fetch Word Definition

Endpoint: `/api/dictionary?word={word}`

#### Query Parameters

- `word` **(required)**: The word you want to look up.

#### Example Request

To look up the word "code":

#### Response


### Response

#### Example Response for "code"
```json
{
  "code": 200,
  "status": "Success",
  "data": [
    {
      "word": "code",
      "phonetic": "/kəʊd/",
      "phonetics": [
        {
          "text": "/kəʊd/",
          "audio": "https://api.dictionaryapi.dev/media/pronunciations/en/code-uk.mp3",
          "sourceUrl": "https://commons.wikimedia.org/w/index.php?curid=89012322",
          "license": {
            "name": "BY-SA 4.0",
            "url": "https://creativecommons.org/licenses/by-sa/4.0"
          }
        },
        {
          "text": "/koʊd/",
          "audio": ""
        }
      ],
      "meanings": [
        {
          "partOfSpeech": "noun",
          "definitions": [
            {
              "definition": "A short symbol, often with little relation to the item it represents.",
              "example": "This flavour of soup has been assigned the code WRT-9."
            },
            {
              "definition": "A body of law, sanctioned by legislation, in which the rules of law to be specifically applied by the courts are set forth in systematic form; a compilation of laws by public authority; a digest."
            },
            {
              "definition": "Any system of principles, rules or regulations relating to one subject.",
              "example": "The medical code is a system of rules for the regulation of the professional conduct of physicians."
            },
            {
              "definition": "A set of rules for converting information into another form or representation."
            },
            {
              "definition": "A message represented by rules intended to conceal its meaning."
            },
            {
              "definition": "A cryptographic system using a codebook that converts words or phrases into codewords."
            },
            {
              "definition": "Instructions for a computer, written in a programming language; the input of a translator, an interpreter or a browser, namely: source code, machine code, bytecode.",
              "example": "I wrote some code to reformat text documents."
            },
            {
              "definition": "(scientific programming) A program."
            },
            {
              "definition": "A particular lect or language variety."
            },
            {
              "definition": "An emergency requiring situation-trained members of the staff."
            }
          ]
        },
        {
          "partOfSpeech": "verb",
          "definitions": [
            {
              "definition": "To write software programs.",
              "example": "I learned to code on an early home computer in the 1980s."
            },
            {
              "definition": "To add codes to a dataset."
            },
            {
              "definition": "To categorize by assigning identifiers from a schedule, for example CPT coding for medical insurance purposes."
            },
            {
              "definition": "To encode."
            },
            {
              "definition": "To encode a protein."
            },
            {
              "definition": "To call a hospital emergency code.",
              "example": "coding in the CT scanner"
            }
          ]
        }
      ],
      "license": {
        "name": "CC BY-SA 3.0",
        "url": "https://creativecommons.org/licenses/by-sa/3.0"
      },
      "sourceUrls": [
        "https://en.wiktionary.org/wiki/code"
      ]
    }
  ]
}
```


### URL Format

### Nutrition Analysis API

#### Analyze Food Item

Endpoint: `/api/nutrition?ingr={ingredient}&nutrition_type={nutrition_type}`


