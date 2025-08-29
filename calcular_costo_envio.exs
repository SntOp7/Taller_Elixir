defmodule Main do
  def main() do
    nombre = Util.input("Ingrese el nombre del cliente: ", :string)
    peso = Util.input("Ingrese el peso del paquete(Kg): ", :float)
    tipo = Util.input("Ingrese el tipo de envio(Economico, Express, Internacional): ", :string)
    aplicar_tarifa(nombre, peso, tipo)
  end

  def aplicar_tarifa(nombre, peso, tipo) do
    tipo_mayus = String.upcase(tipo)
    tarifa =
      case tipo_mayus do
        "ECONOMICO" -> 5000*peso
        "EXPRESS" -> 8000*peso
        "INTERNACIONAL" -> if (peso <= 5) do
          15000*peso
        else
          12000*peso
        end
      end
    registro = {nombre, peso, tipo_mayus, tarifa}
    Util.show_message("#{inspect(registro)}")
  end
end

Main.main()
