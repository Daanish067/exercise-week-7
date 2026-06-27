# Create vectors for each column
Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)

# Combine into a data frame
students <- data.frame(
  Name,
  Gender,
  Age,
  Test_Score,
  Attendance
)

# View the data frame
print(students)

# Display Test_Score using df['Test_Score']
print(students["Test_Score"])

# Display Test_Score using df$Test_Score
print(students$Test_Score)

# Display the first 3 rows
print(students[1:3, ])

# Display students older than 22
print(students[students$Age > 22, ])

# Display female students with Test_Score greater than 80
print(students[
  students$Gender == "Female" &
    students$Test_Score > 80,
])

# Create new student
new_student <- data.frame(
  Name = "Lina",
  Gender = "Male",
  Age = 20,
  Test_Score = 95,
  Attendance = 92
)

# Add new student
students <- rbind(students, new_student)

# Display updated data frame
print(students)

# Create data frame with missing values
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)

# Display original data
print(students_na)

# Check for missing values
print(is.na(students_na))

# Replace missing Age with mean
students_na$Age[is.na(students_na$Age)] <-
  mean(students_na$Age, na.rm = TRUE)

# Replace missing Test_Score with median
students_na$Test_Score[is.na(students_na$Test_Score)] <-
  median(students_na$Test_Score, na.rm = TRUE)

# Replace missing Attendance with 0
students_na$Attendance[is.na(students_na$Attendance)] <- 0

# Display updated data frame
print(students_na)

