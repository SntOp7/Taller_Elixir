defmodule Main do
  def main() do
    nombre = Util.input("Ingrese su nombre: ", :string)
    temp = Util.input("Ingrese la temperatura en grados Celsius: ", :float)
    convertir_temp(nombre, temp)
  end

  def convertir_temp(nombre, temp) do
    cond do
      temp == 0 ->
        Util.show_message("Error: El consumo no puede ser 0")
      temp < 0 ->
        Util.show_message("Error: El consumo no puede ser menor a cero")

      true ->
        far = (temp * 9/5) + 32
        kelvin = temp + 273.15
        Util.show_message("#{nombre} , la temperatura es: #{far}°F y #{kelvin}K")
    end
  end
end

Main.main()
