# Learn your own dictionary functionality

1. User
    1. Register User
    2. Login User
    3. Save UI language
2. Learning
    1. Exercises
        1. Show Word in the native language and options to choose from the learning language
        2. Show Word on the learning language and options to choose from the native language
        3. Each exercise is based on the concrete words list
        4. Guessed word decrease count of repeats for word
        5. Not guessed word increase count of repeats for word
        6. When the number of repeats is equal to the list set value - the word changes status to learned
        7. Each exercise should use the first more popular words.
    2. Word Lists
        1. Create a list with the CUSTOM name
        2. Add a word to the list
        3. Upload a text file and get all words from it
        4. Find the translation and definition of each word in the list
        5. Delete a word from the list
        6. Delete the words list from the user collection
        7. Merge 2..n lists into one
            1. Duplicates should be removed
            2. If lists contain the same words - the number of repeating words should be summed
            3. Previous lists should stay unchanged
            4. Optionally merged lists can be proposed to be deleted
        8. Each list should have a default complexity level that the user can change. This is a number of repeats for a word that means the word was learned
        9. List should have the ability to be sorted alphabetically in both directions or by word count (popularity).
        10. Global list should contain all the user words and marks already learned.
        11. Global List should have the ability to sort words alphabetically in both directions, by popularity or learned/in progress words.
    3. Supporting files:
        1. TXT
        2. FB2
        3. Html
        4. Web page by its URL
    4. Text file parsing
        1. Text should be cleaned up from numbers and special symbols
        2. Each word should have a number of repeating in the text
        3. Duplicates should be removed
        4. After parsing should be provided 2 lists with words: first - where all were parsed successfully, second - parsing failed and the user should manually fix issues.
        5. Parser should use customizations like: ignoring articles
        6. All the words should have the same case (upper case)

# What is a User

The user can be represented by their email and password.
Also, users can have a preferred language of UI.

# Word representation

The word should have:
- Word itself
- Word translation
- Word definition
- Word definition translation
- Word part of the language
- List of synonyms

# Word list representation

The list of words should have the following information:
- Words
- Count of each word (popularity)
- Learned/InProgress marks