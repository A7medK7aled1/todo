# To-Do List App

## Overview
This is a simple To-Do List application built using Flutter, a popular framework for creating cross-platform mobile applications. The app utilizes Hive for local storage and Provider for state management, providing an efficient and responsive user experience.

## Features
- Add new notes with a title.
- View a list of existing notes.
- Delete notes with a single tap on the trash icon.
- Switch between light and dark themes.

## Technologies Used
- **Flutter**: For building the UI and handling the app's logic.
- **Hive**: A lightweight, NoSQL database for local storage of notes.
- **Provider**: A state management solution to manage the app's state efficiently.

## Installation
1. Ensure you have Flutter installed on your machine. Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone the repository:
   ```
   git clone https://github.com/your-username/todo-list-app.git
   ```
3. Navigate to the project directory:
   ```
   cd todo-list-app
   ```
4. Install dependencies:
   ```
   flutter pub get
   ```
5. Run the app:
   ```
   flutter run
   ```

## Usage
- Tap the "+" button to create a new note.
- Enter a title for the note and save it.
- View all notes on the main screen.
- Use the search bar to find specific notes.
- Tap the trash icon to delete a note.
- Switch themes using the theme toggle in the app settings.

## Screenshots
- ![Empty State](screenshots/empty note.PNG)
- ![List View Light Theme](screenshots\light mode.PNG)
- ![Grid View Dark Theme](screenshots/Notes grid View.PNG)
- ![Note Creation](screenshots\add note view.PNG)


## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your changes. Ensure to follow the existing code style and include tests where applicable.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Thanks to the Flutter community for the amazing framework.
- Hive and Provider teams for their excellent packages.
