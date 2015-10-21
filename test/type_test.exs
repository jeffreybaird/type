defmodule TypeTest do
  use ExUnit.Case
  doctest Type

  test "a number" do
    assert Type.check(1) == 'Integer'
  end

  test "a boolean" do
    assert Type.check(true) == 'Boolean'
  end

  test "a float" do
    assert Type.check(1.0) == 'Float'
  end

  test "a atom" do
    assert Type.check(:hi) == 'Atom'
  end

  test "a map" do
    assert Type.check(%{:hi => 1}) == 'Map'
  end

  test "a list" do
    assert Type.check([1,2,3])  == 'List'
  end

  test "a binary" do
    assert Type.check("abc") == 'Binary'
  end

  test "a bitstring" do
    assert Type.check(<< 1 :: size(1)>>) == 'Bitstring'
  end

  test "function" do
    assert Type.check(&(&1+1)) == 'Function'
  end

  test "nil" do
    assert Type.check(nil) == 'Nil'
  end

  test "is pid" do
    pid = Process.spawn(Type, :check, ["hi"],[])
    assert Type.check(pid) == 'Pid'
  end

  test "is port" do
    port = Port.open({:spawn,'test'},[])
    assert Type.check(port) == 'Port'
  end

  test "a reference" do
    pid = Process.spawn(Type, :check, ["hi"],[])
    ref  = Process.monitor(pid)
    assert Type.check(ref) == 'Reference'
  end

  test "a tuple" do
    assert Type.check({:ok, "200"}) == 'Tuple'
  end

end
