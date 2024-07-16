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

#### Response
```json
{
  "code": 200,
  "status": "Success",
  "data": [
    {
      "_id": "58e008780aac31001185ed05",
      "status": "verified",
      "user": "58e007480aac31001185ecef",
      "text": "Owning a cat can reduce the risk of stroke and heart attack by a third.",
      "createdAt": "2018-03-29T20:20:03.844Z",
      "updatedAt": "2020-08-23T20:20:01.611Z",
      "deleted": false,
      "used": false
    },
    {
      "_id": "58e009390aac31001185ed10",
      "status": "verified",
      "user": "58e007480aac31001185ecef",
      "text": "Most cats are lactose intolerant, and milk can cause painful stomach cramps and diarrhea. It's best to forego the milk and just give your cat the standard: clean, cool drinking water.",
      "createdAt": "2018-03-04T21:20:02.979Z",
      "updatedAt": "2020-08-23T20:20:01.611Z",
      "deleted": false,
      "used": false
    },
    {
      "_id": "588e746706ac2b00110e59ff",
      "status": "verified",
      "user": "588e6e8806ac2b00110e59c3",
      "text": "Domestic cats spend about 70 percent of the day sleeping and 15 percent of the day grooming.",
      "createdAt": "2018-01-14T21:20:02.750Z",
      "updatedAt": "2020-08-26T20:20:02.359Z",
      "deleted": false,
      "used": true
    },
    {
      "_id": "58e008ad0aac31001185ed0c",
      "status": "verified",
      "user": "58e007480aac31001185ecef",
      "text": "The frequency of a domestic cat's purr is the same at which muscles and bones repair themselves.",
      "createdAt": "2018-03-15T20:20:03.281Z",
      "updatedAt": "2020-08-24T20:20:01.867Z",
      "deleted": false,
      "used": true
    },
    {
      "_id": "58e007cc0aac31001185ecf5",
      "status": "verified",
      "user": "58e007480aac31001185ecef",
      "text": "Cats are the most popular pet in the United States: There are 88 million pet cats and 74 million dogs.",
      "createdAt": "2018-03-01T21:20:02.713Z",
      "updatedAt": "2020-08-23T20:20:01.611Z",
      "deleted": false,
      "used": false
    }
  ]
}
```

### Free Dictionary API

#### Fetch Word Definition

Endpoint: `/api/dictionary?word={word}`

- `word` **(required)**: The word you want to look up.

#### Example Request
Endpoint: `/api/dictionary?word={code}`

To look up the word "code":

#### Response for "code"
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

### Nutrition Analysis API

#### Analyze Food Item

Endpoint: `/api/nutrition?ingr={ingredient}&nutrition_type={nutrition_type}`

- **ingr**: The ingredient to analyze (e.g., `10 cup of corn`)
- **nutrition_type**: The type of nutrition information required (e.g., `cooking`)

#### Example Request
Endpoint: `/api/nutrition?ingr=10%20cup%20of%20corn&nutrition_type=cooking`

#### Response for "ingr = 10 cup of corn, nutrition_type = cooking"

```json
{
  "code": 200,
  "status": "Success",
  "data": {
    "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_f433f04d2a25431aa84ccb5d11735add",
    "calories": 1247,
    "totalCO2Emissions": 275.155625,
    "co2EmissionsClass": "A",
    "totalWeight": 1450,
    "dietLabels": [
      "LOW_FAT",
      "LOW_SODIUM"
    ],
    "healthLabels": [
      "VEGAN",
      "VEGETARIAN",
      "PESCATARIAN",
      "MEDITERRANEAN",
      "DAIRY_FREE",
      "GLUTEN_FREE",
      "WHEAT_FREE",
      "EGG_FREE",
      "MILK_FREE",
      "PEANUT_FREE",
      "TREE_NUT_FREE",
      "SOY_FREE",
      "FISH_FREE",
      "SHELLFISH_FREE",
      "PORK_FREE",
      "RED_MEAT_FREE",
      "CRUSTACEAN_FREE",
      "CELERY_FREE",
      "MUSTARD_FREE",
      "SESAME_FREE",
      "LUPINE_FREE",
      "MOLLUSK_FREE",
      "ALCOHOL_FREE",
      "NO_OIL_ADDED",
      "NO_SUGAR_ADDED",
      "SULPHITE_FREE",
      "FODMAP_FREE",
      "KOSHER"
    ],
    "cautions": [],
    "totalNutrients": {
      "ENERC_KCAL": {
        "label": "Energy",
        "quantity": 1247,
        "unit": "kcal"
      },
      "FAT": {
        "label": "Total lipid (fat)",
        "quantity": 19.575,
        "unit": "g"
      },
      "CHOCDF": {
        "label": "Carbohydrate, by difference",
        "quantity": 271.15,
        "unit": "g"
      },
      "PROCNT": {
        "label": "Protein",
        "quantity": 47.415,
        "unit": "g"
      }
      // Additional nutrients can be added here
    },
    "ingredients": [
      {
        "text": "10 cup of corn",
        "parsed": [
          {
            "quantity": 10,
            "measure": "cup",
            "foodMatch": "corn",
            "food": "corn"
          }
        ]
      }
    ],
    "status": "OK"
  }
}
```


