defmodule HealthComponent do
  use GenEvent.Behaviour

  ### Public API

  def get_hp(entity) do
    :gen_event.call entity, HealthComponent, :get_hp
  end

  ### GenEvent API

  def init(hp) do
    {:ok, hp}
  end

  def handle_call(:get_hp, hp) do
    {:ok, hp, hp}
  end
end
