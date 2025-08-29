defmodule Main do
  def main() do
    nombre = Util.input("Ingrese su nombre: ", :string)
    distancia = Util.input("Ingrese la distancia en km: ", :float)
    consumo = Util.input("ingrese la cantidad de litros consumidos: ", :float)
    calcular_consumo(nombre, distancia, consumo)
  end

  def calcular_consumo(nombre, distancia, consumo) do
    cond do
      consumo == 0 ->
        Util.show_message("Error: El consumo no puede ser 0")
      consumo < 0 ->
        Util.show_message("Error: El consumo no puede ser menor a cero")
      distancia == 0 ->
        Util.show_message("Error: La distancia no puede ser 0")
      distancia < 0 ->
        Util.show_message("Error: La distancia no puede ser menor a cero")

      true ->
        rendimiento = distancia / consumo
        Util.show_message("Hola #{nombre} , el rendimiento de tu vehiculo es de #{rendimiento} Km/L")
    end
  end
end

Main.main()
