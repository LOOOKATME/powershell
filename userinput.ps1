# Prompt the user for input
$userInput = Read-Host "Enter a number (1 or 2):"

# Check the user input and execute corresponding command
if ($userInput -eq 1) {
    # Execute command for option 1
    $output = Get-Process | Select-Object -First 5
}
elseif ($userInput -eq 2) {
    # Execute command for option 2
    $output = Get-Service | Select-Object -First 5
}
else {
    # Display an error message for invalid input
    Write-Host "Invalid input. Please enter 1 or 2."
    # Exit the script
    Exit
}

# Print the output
Write-Host "Result:"
Write-Host $output

