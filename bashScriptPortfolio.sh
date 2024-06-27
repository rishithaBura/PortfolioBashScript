#!/bin/bash

#variables
name='Rishitha Bura'
school='Wayne State University'
company='365 Retail Markets'
codingLanguages='Java Javascript C++ React HTML CSS MySQL'
hobbies=("1) Watching movies" "2) Reading books (fiction)" "3) Hanging out" "4) Music")
goals=("1) Full Stack Software Developer" "2) Be knowledgeable about Data Science and AI" "3) Guitarist" "4) Be Happy")
yes='y'
email='rishithabura@gmail.com'
linkedIn='https://www.linkedin.com/in/rishitha-bura-36a035231/'
graduationDate='May 2025'

echo "Welcome to my Portfolio Bash Script"
echo "My name is $name and I am excited to share my skills, experiences and hobbies."
echo "Now, I present you the opportunity to learn more about me."
echo "What do you want to know? (Select the number please)"
options=("Education" "Hobbies" "Technical Knowledge" "Goals" "Quit")
select opt in "${options[@]}"
do 
    case $opt in 
        "Education")
            echo "you chose Education"
            echo "I am currently a Senior studying Computer Science at $school. I graduate in $graduationDate"
            ;;
        "Hobbies")
            echo "you chose Hobbies"
            echo "My hobbies are: "
            for hobby in "${hobbies[@]}"
                do
                    echo "$hobby"
                done
            ;;
        "Technical Knowledge")
            echo "you chose Technical Knowledge"
            echo "I enjoy programming and solving problems. I am familiar with $codingLanguages."
            echo "Throughout my internship so far with $company, I gained a lot of practical experience and guidance. I pair programmed and mob programmed with all the interns and its great viewing the problems in various perspectives."
            ;;
        "Goals")
            echo "you chose Goals"
            echo "My long term goals are: "
            for goal in "${goals[@]}"
                do
                    echo "$goal"
                done
            ;;
        "Quit")
            echo "you chose quit"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo "Thank you. I hope you enjoyed learning more about me through my bash script."
echo "Do you want my contact information y/n?"
read input

if [[ $input == $yes ]]
then 
    echo "Email: $email"
    echo "LinkedIn: $linkedIn"
    echo "See Ya!"
else 
    echo "See ya!"
fi 