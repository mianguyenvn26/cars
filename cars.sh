#! /bin/bash
#cars.sh
#Mia Nguyen

choice=0

while [ "$choice" -ne 3 ]
do
    echo "1–Enter a new car"
    echo "2–List the cars"
    echo "3–Quit"
    read -r -p "Enter your choice: " choice

    case "$choice" in
        1)
            read -r -p "Enter the year: " year
            read -r -p "Enter the make: " make
            read -r -p "Enter the model: " model
            
            # append to my_old_car
            new_car="${year}:${make}:${model}"
            echo -e "\n$new_car\n" >> my_old_cars #insertion string ope
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
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
