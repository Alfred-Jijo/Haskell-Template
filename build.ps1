# Define the GHC command
$ghcCommand = "ghc --make -isrc .\src\Main.hs -outputdir .\out"

# Execute the GHC command
Invoke-Expression $ghcCommand
