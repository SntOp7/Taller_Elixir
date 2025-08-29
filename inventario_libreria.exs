defmodule Main do
  def main() do
    titulo = Util.input("Ingrese el titulo del libro :", :string)
    unidades_disponibles = Util.input("Ingrese la cantidad de unidades disponibles: ", :integer)
    precio_unitario = Util.input("Ingrese el precio unitsrio: ", :float)
    calcular_precio_total(titulo, unidades_disponibles, precio_unitario)
  end

  def calcular_precio_total(titulo, unidades_disponibles, precio_unitario) do
    cond do
      unidades_disponibles == 0 ->
        Util.show_message("Error: El consumo no puede ser 0")
      unidades_disponibles < 0 ->
        Util.show_message("Error: El consumo no puede ser menor a cero")
      precio_unitario == 0 ->
        Util.show_message("Error: La distancia no puede ser 0")
      precio_unitario < 0 ->
        Util.show_message("Error: La distancia no puede ser menor a cero")

      true ->
        total = unidades_disponibles * precio_unitario
        Util.show_message("El libro #{titulo}, tiene #{unidades_disponibles} unidades, con un valor total de #{total} ")
    end
  end
end

Main.main()
