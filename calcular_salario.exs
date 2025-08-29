defmodule Main do
  def main() do
    nombre = Util.input("Ingrese su nombre: ", :string)
    base = Util.input("Ingrese su salario base: ", :float)
    extras = Util.input("Ingrese el numero de horas extras trabajadas: ", :integer)
    calcular(nombre, base, extras)
  end

  def calcular(nombre, base, extras) do
    cond do
      base == 0 ->
        Util.show_message("Error: El salario base no puede ser 0")
      base < 0 ->
        Util.show_message("Error: El salario base no puede ser menor a cero")

      true ->
        precio_hora = base / 160
        extra = extras*(precio_hora * 1.5)
        salario = base + extra
        Util.show_message("#{nombre}, el salario es de: $#{salario} ")
    end
  end
end

Main.main()
