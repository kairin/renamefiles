# Import the mappings
. .\mappings.ps1

# Rename files based on the mapping
$files = Get-ChildItem -File -Filter "*.pdf"
foreach ($file in $files) {
    # Remove the "Supplier_Invoice__" prefix to match the Invoice value
    $actualBaseName = $file.BaseName -replace "^Supplier_Invoice__", ""

    # Match the cleaned name with the Invoice in the mapping
    $entry = $mappings | Where-Object { $_.Invoice -eq $actualBaseName }
    if ($entry) {
        $newName = "{0} {1}.pdf" -f $entry.Supplier, $entry.Invoice
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Host "Renamed: $($file.Name) -> $newName"
    } else {
        Write-Host "No match found for: $actualBaseName"
    }
}