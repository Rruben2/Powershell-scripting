function buscar-archivo {
    
    $nombreArchivo = $args[0]

    
    $ruta = "C:\" 

    $resultado = Get-ChildItem -Path $ruta -Recurse -Filter $nombreArchivo -ErrorAction SilentlyContinue

    if ($resultado) {
        Write-Host "El archivo existe en esta ruta:" $resultado.FullName
    }
    else {
        Write-Host "No se encontró el archivo '$nombreArchivo'."
    }
}

