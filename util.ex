defmodule Util do
  @moduledoc """
  Utility module for displaying messages using Java.
  """

  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  def input(message, :integer) do
    try do
      message
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        show_message("Error: El valor ingresado no es un entero válido. Ingresa un número sin decimales.")
        input(message, :integer)
    end
  end

  def input(message, :float) do
  valor = input(message, :string)

  try do
    String.to_float(valor)
  rescue
    ArgumentError ->
      try do
        String.to_integer(valor) * 1.0
      rescue
        ArgumentError ->
          show_message("Error: El valor ingresado no es un número válido (usa punto para decimales).")
          input(message, :float)
      end
  end
end
end
