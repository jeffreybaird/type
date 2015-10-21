defmodule Type do
  @spec check(any()) :: char_list
  def check(arg), do: _check(arg)
  defp _check(arg) when is_map(arg), do: 'Map'
  defp _check(arg) when is_list(arg), do: 'List'
  defp _check(arg) when is_atom(arg), do: 'Atom'
  defp _check(arg) when is_binary(arg), do: 'Binary'
  defp _check(arg) when is_bitstring(arg), do: 'Bitstring'
  defp _check(arg) when is_boolean(arg), do: 'Boolean'
  defp _check(arg) when is_float(arg), do: 'Float'
  defp _check(arg) when is_function(arg), do: 'Function'
  defp _check(arg) when is_integer(arg), do: 'Integer'
  defp _check(arg) when is_number(arg), do: 'Number'
  defp _check(arg) when is_pid(arg), do: 'Pid'
  defp _check(arg) when is_port(arg), do: 'Port'
  defp _check(arg) when is_reference(arg), do: 'Reference'
  defp _check(arg) when is_tuple(arg), do: 'Tuple'
  defp _check(arg) when is_nil(arg), do: 'Nil'
end
