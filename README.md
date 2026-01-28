# README for Numbers Script

## Author Information
- **Name:** Mia Nguyen 
- **Course:** CPSC 298-01  
- **Assignment:** Cars Script   
- **Date:** Jan 27  

## Program Description
This script allow user to list new cars and get the car file sorted by year

## Example Output
If the user enters **1**, the program should display:
```
Enter the year:
Enter the make:
Enter the model:

```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `numbers-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a **shebang** (`#!/bin/bash`) and identifying comments.  
2. It prints out 3 options for user to choose  
3. A case statement used to excecute script tied to the choice.
4. The echo "$new_car" >> my_old_cars appends new car to the file
5. The while loop will again keep prompting until a 3-Quit is recognized 

## Core Logic Example
```bash
case "$choice" in
        1)
            read -r -p "Enter the year: " year
            read -r -p "Enter the make: " make
            read -r -p "Enter the model: " model
            
            # append to my_old_car
            new_car="${year}:${make}:${model}"
            echo -e "\n$new_car\n" >> my_old_cars #THIS HELPS FORMATTING
            ;;
        2)
            # Sort the file by year
            if [ -f my_old_cars ]; then
                sort -n my_old_cars
            else
                echo "No cars recorded yet."
            fi
            ;;
        3)
            echo "Goodbye"
            ;;
        *) # for the default case
            echo "Invalid option. Please try again."
            ;;
    esac
done
```

## Testing Results
When tested with the input file `cars-input` containing:
```
1948:Ford:sedan

1952:Chevrolet:coupe

1960:Ford:Mustang

1972:Chevrolet:Corvette

1977:Plymouth:Roadrunner

1984:Toyota:Supra
```
The script outputs:
```
1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1972:Chevrolet:Corvette
1977:Plymouth:Roadrunner
1984:Toyota:Supra
1984:Toyota:Supra
1–Enter a new car
2–List the cars
3–Quit
Goodbye

```

## Example Validations
Enter your choice: 1
Enter the year: 1964
Enter the make: Honda
Enter the model: RX-7
1–Enter a new car
2–List the cars
3–Quit
Enter your choice: 2

1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1964:Honda:RX-7
1972:Chevrolet:Corvette
1977:Plymouth:Roadrunner
1984:Toyota:Supra
1–Enter a new car
2–List the cars
3–Quit
Enter your choice: 3
Goodbye


## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
