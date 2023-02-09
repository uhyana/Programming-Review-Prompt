$response = Invoke-WebRequest -Uri "https://datausa.io/api/data?drilldowns=State&measures=Population"
$data = $response.Content | ConvertFrom-Json
$data.data | Export-Csv -Path "ProgrammingReviewPrompt.csv" -NoTypeInformation
