#!/bin/bash

# Obtener el brillo actual
brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)

# Calcular el porcentaje de brillo
brightness_percentage=$(( brightness * 100 / 255))

# Imprimir el brillo en color amarillo para Polybar
echo "%{F#ffce30}󰃞  %{F-}$brightness_percentage%"
