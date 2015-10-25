# Type

**TODO: Add description**

## Installation

  1. Add type to your list of dependencies in `mix.exs`:

        def deps do
          [{:type, "~> 0.0.1"}]
        end

  2. Ensure type is started before your application:

        def application do
          [applications: [:type]]
        end
## Usage

    iex> Type.check(:hi)
    'Atom'