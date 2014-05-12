defmodule XYComponent do
  use GenEvent.Behaviour

  ### Public API

  def get_position(entity) do
    :gen_event.call entity, XYComponent, :get_position
  end

  ### GenEvent API

  def init(position) do
    {:ok, position}
  end

  def handle_call(:get_position, position) do
    {:ok, position, position}
  end
end
