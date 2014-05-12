defmodule ZeldaCatTest do
  use ExUnit.Case

  test "when we make a new entity and add a HealthComponent, the hp increases" do
    {:ok, entity} = Entity.init
    Entity.add_component entity, HealthComponent, 100

    assert HealthComponent.get_hp(entity) == 100
  end
end
