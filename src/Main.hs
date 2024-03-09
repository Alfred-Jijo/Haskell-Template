import System.Random (randomRIO)

-- Function to generate a random number between 1 and 100
generateRandomNumber :: IO Int
generateRandomNumber = randomRIO (1, 100)

-- Function to prompt the user for input
prompt :: String -> IO String
prompt message = do
    putStrLn message
    getLine

-- Function to validate user input and check if it's a correct guess
checkGuess :: Int -> Int -> IO ()
checkGuess randomNumber guess
    | guess < randomNumber = do
        putStrLn "Too low!"
        playGame randomNumber
    | guess > randomNumber = do
        putStrLn "Too high!"
        playGame randomNumber
    | otherwise = putStrLn "Congratulations! You guessed the correct number!"

-- Function to play the game
playGame :: Int -> IO ()
playGame randomNumber = do
    guessStr <- prompt "Guess a number between 1 and 100:"
    let guess = read guessStr :: Int
    checkGuess randomNumber guess

-- Main function to start the game
main :: IO ()
main = do
    putStrLn "Welcome to the Guessing Game!"
    randomNumber <- generateRandomNumber
    playGame randomNumber
