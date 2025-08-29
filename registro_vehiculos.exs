defmodule Main do
  def main() do
    placa = Util.input("Ingrese la placa: ", :string)
    tipo_vehiculo = Util.input("Ingrese el tipo de vehiculo(Carro, Moto, Camion): ", :string)
    peso = Util.input("Ingrese el peso del vehiculo(toneladas): ", :float)
    registrar(placa, tipo_vehiculo, peso)
  end

  def registrar(placa, tipo, peso) do
    tipo_mayus = String.upcase(tipo)
    tarifa =
      case tipo_mayus do
        "CARRO" -> 10000
        "MOTO" -> 5000
        "CAMION" -> 20000 + 2000*peso

    end
    registro = {placa, tipo_mayus, tarifa}
    {placa_a, tipo_a, tarifa_a} = registro
    mensaje = "Vehiculo: #{placa_a}, de tipo #{tipo_a} debe pagar $#{tarifa_a}"
    Util.show_message(mensaje)
  end
end

Main.main()
