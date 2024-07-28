# AI-Assisted Shopping List Manager

## Description
This project is an AI-assisted shopping list manager that helps users organize their grocery shopping more efficiently. It categorizes food items into aisles and categories, utilizing both predefined rules and AI assistance for unmatched items.

## Features
- Input shopping lists via CLI or file
- Categorize food items into aisles and categories
- AI assistance for categorizing unfamiliar items
- Output organized shopping lists to console or file

## Structure
The project is structured as follows:

- `Sources/`
  - `main.swift`: Entry point of the application
  - `Entities/`: Core data models and utilities
  - `Managers/`: Business logic managers
  - `Protocols/`: Protocol definitions
  - `Handlers/`: Input/Output handlers
  - `Services/`: External service integrations (e.g., AI classifier)

## Setup
1. Ensure you have Swift 5.0 or later installed on your system.
2. Clone this repository.
3. Navigate to the project directory.

## Usage
Run the program using the following command: swift run

You can choose between CLI and FILE input/output by modifying the `inputType` parameter in the `run()` function call in `main.swift`.

## Input
- For CLI input, enter items one per line. An empty line signals the end of input.
- For file input, create a text file with one item per line. Specify the file path in the `FileHandler` initialization.

## Output
- CLI output will be displayed in the console.
- File output will be written to the specified file path.

## Dependencies
- Swift Standard Library

## Contact
Email me @ Olivernl103@gmail.com
