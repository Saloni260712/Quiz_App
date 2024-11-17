

# Quiz App

A user-friendly quiz application built with Swift for iOS devices. This app allows users to create, edit, and play quizzes with custom questions. It features an interactive user interface and a streamlined workflow for quiz management.

---

## Features

- **Add Questions**: Users can add custom quiz questions with correct and incorrect answers.
- **Edit Questions**: Modify existing quiz questions directly from the question bank.
- **Start Quiz**: Play a quiz using the added questions with an engaging UI.
- **Track Progress**: See your progress and score as you answer each question.
- **Interactive Navigation**: Navigate between questions using intuitive controls.

---

## Installation

1. Clone this repository:
   ```bash
   git clone <repository_url>
   ```

2. Open the project in Xcode:
   ```bash
   open Quiz_App.xcodeproj
   ```

3. Build and run the project on a simulator or a physical device.

---

## How to Use

### Adding Questions
1. Tap the "Add Question" button on the main screen.
2. Enter the question, correct answer, and three incorrect answers.
3. Tap "Save" to add the question to the bank.

### Editing Questions
1. Tap on a question in the question bank.
2. Modify the question or answers in the fields provided.
3. Tap "Save" to update the question.

### Playing the Quiz
1. Tap "Start Quiz" from the main screen.
2. Answer the questions by tapping on the correct answer.
3. See your progress and score at the end of the quiz.

---

## Code Architecture

The app is structured using the **MVC (Model-View-Controller)** pattern:

- **Model**: 
  - `Question`: Represents a single quiz question with properties like `questionText`, `correctAnswer`, `incorrectAnswers`, `color`, and `image`.
  - `QuizManager`: Handles data storage and quiz logic such as adding, updating, and retrieving questions.

- **View**: 
  - Storyboard and Interface Builder are used to design the app's user interface.

- **Controller**: 
  - `QuestionBankViewController`: Manages the question bank and table view.
  - `AddQuestionViewController`: Handles adding and editing questions.
  - `InitiateQuizViewController`: Manages the quiz gameplay.

---

## Technologies Used

- **Swift**: Primary programming language.
- **UIKit**: For user interface design.
- **Xcode**: Development environment.

---

## Future Enhancements

- **Support for Images**: Allow users to attach images to questions.
- **Themes**: Add dark mode or custom color themes for the app.
- **Advanced Analytics**: Provide insights like average score and quiz completion time.
- **Database Integration**: Save questions to a persistent database (e.g., Core Data or Firebase).

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

