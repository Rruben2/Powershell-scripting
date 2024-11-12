function calculadora

{$numero1=$args[0]
$numero2=$args[1]
$operacion=$args[2]

if ($operacion -eq "+"){
    $resultado=[int]$numero1 + [int]$numero2
    Write-Host "El resultado de su operacion es " $resultado
}

elseif ($operacion -eq "-"){
    $resultado=[int]$numero1 - [int]$numero2
    Write-Host "El resultado de su operacion es " $resultado
}

elseif ($operacion -eq "/"){
    $resultado=[int]$numero1 / [int]$numero2
    Write-Host "El resultado de su operacion es " $resultado
}

elseif ($operacion -eq "*"){
    $resultado=[int]$numero1 * [int]$numero2
    Write-Host "El resultado de su operacion es " $resultado
}
else {
    Write-Host "Error de operacion el orden es este numero1 numero2 operacion( + - * /)"
}
}