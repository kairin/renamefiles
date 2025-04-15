# Rename Files App

This app automates the renaming of files based on invoice and supplier mappings.

## Files
- `mappings.ps1`: Contains the mappings of Invoice Numbers to Supplier Invoice Numbers.
- `renamefiles.ps1`: The PowerShell script to rename files based on the mappings.
- `README.md`: This documentation.

## How to Use
1. Place your `.pdf` files in the same directory as the scripts.
2. Update `mappings.ps1` with the correct mappings of `Invoice` and `Supplier` values.
3. Open PowerShell and navigate to the directory.
4. Run the `renamefiles.ps1` script:
   ```powershell
   .\renamefiles.ps1
   ```
5. The files will be renamed in the format:
   ```
   Supplier's Invoice Number Invoice Number.pdf
   ```

## Example
For a file named `Supplier_Invoice__ITE-SUI-CY2025-009927.pdf`, the script will rename it to:
```
2025-04-11--1634322254 ITE-SUI-CY2025-009927.pdf
```

## Notes
- Ensure the execution policy allows running scripts (`Unrestricted` or `Bypass`).
- Test with a few files before running on a large batch.
