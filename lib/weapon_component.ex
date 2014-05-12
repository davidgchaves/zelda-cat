defmodule WeaponComponent do
  use GenEvent.Behaviour

  ### PublicAPI

  def list_available_weapons(entity) do
    :gen_event.call entity, WeaponComponent, :list_available_weapons
  end

  ### GenEventAPI

  def init(weapons) do
    {:ok, weapons}
  end

  def handle_call(:list_available_weapons, weapons) do
    {:ok, weapons, weapons}
  end

  def handle_event({:add_weapon, weapon}, weapons) do
    {:ok, weapons ++ [weapon]}
  end
end
