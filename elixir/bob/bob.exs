defmodule Bob do
  def hey(input) do
    cond do
      (Regex.match?(~r/^[ ]/, input) || String.length(input) == 0) -> "Fine. Be that way!"
      (input == String.upcase(input) && Regex.match?(~r/[a-zA-Z]/, input) && String.last(input) == "?") -> "Calm down, I know what I'm doing!"
      (String.last(input) == "?") -> "Sure."
      (input == String.upcase(input) && Regex.match?(~r/[a-zA-Z]/, input)) -> "Whoa, chill out!"
      (String.last(input) == "И") -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
