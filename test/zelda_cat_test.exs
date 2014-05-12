defmodule ZeldaCatTest do
  use ExUnit.Case

  test "when we make a new entity and add a HealthComponent, the hp increases" do
    {:ok, entity} = Entity.init
    Entity.add_component entity, HealthComponent, 100

    assert HealthComponent.get_hp(entity) == 100
  end

  test "when we make a new entity and add a HealthComponent, the entity is alive" do
    {:ok, entity} = Entity.init
    Entity.add_component entity, HealthComponent, 100

    assert HealthComponent.alive?(entity) == true
  end

  test "when we send a 'hit' event to the entity, the hp diminishes" do
    {:ok, entity} = Entity.init()
    Entity.add_component entity, HealthComponent, 100

    Entity.notify entity, {:hit, 75}
    assert HealthComponent.get_hp(entity) == 25
  end
end
