#!/bin/bash
# Remember to make this executable with `chmod u+x cover-generator.sh`
# and then `./cover-generator.sh` to run

echo "Cover Letter Generator"
echo "Automate Cover Letters for Companies"
echo "__________________________________________________________________________"

# Personal Details
read -p "Full Name [defaults to Viren Mohindra]: " name
name=${name:-Viren Mohindra}

read -p "Class Standing [defaults to Sophomore]: " year
year=${year:-"Sophomore"}

read -p "Major [defaults to Film & TV and Computer Science]: " major
major=${major:-"Film & TV and Computer Science"}

read -p "College/ University [defaults to New York University]: " college
college=${college:-"New York University"}

read -p "Address [defaults to 80 Lafayette Street, 0908A, New York, US - 10013]: " address
address=${address:-"80 Lafayette Street, 0908A, New York, US - 10013"}

read -p "Website [defaults to http://virenmohindra.me/]: " web
web=${web:-"http://virenmohindra.me/"}

read -p "Phone Number [defaults to +1 (240) 848-0818]: " phone
phone=${phone:-"+1 (240) 848-0818"}

read -p "Email Address [defaults to viren.mohindra@nyu.edu]: " email
email=${email:-"viren.mohindra@nyu.edu"}

read -p "List of countries you've lived in [defaults to Hong Kong, Singapore, and India]: " country
country=${country:-"Hong Kong, Singapore, and India"}


# Company
read -p "Person of Contact [defaults to Hiring Manager]: " poc
poc=${poc:-"Hiring Manager"}

read -p "Job Title: " job

read -p "Company Name: " companyName

read -p "Industry: [defaults to Software]: " industry
industry=${industry:-"Software"}

# today's date
now=$(date +"%m-%d-%Y")

# essay
BS=
"
$name
$address
$web
$phone
$now

Hello $poc,

I hope your day is going well. I am applying as a $job at $companyName. As the Co-Founder of a brand development agency, Nuked Studios (http://nukewebbed.com/), I have always needed to interact extensively with clients, while researching and identifying competition. After having lived and studied in $country, I have learnt how to communicate well and assist customers, providing a good product with great service.

On the technical side, I am currently a $year studying $major at $college. In my spare time, I pursue website development and am also the Chief Technology Officer for The Young Post (http://theyoungpost.com/). Some of my responsibilities include collaborating with a number of undergraduate ivy league undergraduates and handling a staff of 130 capable writers.

I manage and follow Google Analytics for all the aforementioned sites; having recently implemented heat maps and visitor recordings to effectively capture target demographics. Using this data, I ensure conversions to the numerous sites I own, increasing subscriber count.

I would appreciate an opportunity at $companyName to further my knowledge in the $industry business. Please let me know if there's anything else you need from me. I look forward to hearing from you. My attached resume details additional work experience. Thank you for your time and consideration in reviewing my application.

Best Regards,




$name
Email: $email or
Cell: $phone
"

# creating cover letter
cat <<EOT >> "$Cover_Letter.txt"
$BS
EOT

# lmao
echo "setting everything up..."
sleep 2
echo "done!"

# TO DO LIST
# improve cover letter (?)