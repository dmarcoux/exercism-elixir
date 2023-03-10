defmodule Rpg do
  defmodule Character do
    defstruct health: 100, mana: 0
  end

  defmodule LoafOfBread do
    defstruct []
  end

  defmodule ManaPotion do
    defstruct strength: 10
  end

  defmodule Poison do
    defstruct []
  end

  defmodule EmptyBottle do
    defstruct []
  end

  # Add code to define the protocol and its implementations below here...
  defprotocol Edible do
    def eat(item, character)
  end

  defimpl Edible, for: LoafOfBread do
    def eat(%LoafOfBread{}, character = %Character{health: health}) do
      {nil, %{character | health: health + 5}}
    end
  end

  defimpl Edible, for: ManaPotion do
    def eat(%ManaPotion{strength: strength}, character = %Character{mana: mana}) do
      {%EmptyBottle{}, %{character | mana: mana + strength}}
    end
  end

  defimpl Edible, for: Poison do
    def eat(%Poison{}, character = %Character{}) do
      {%EmptyBottle{}, %{character | health: 0}}
    end
  end
end
