class Container
    extend Dry::Container::Mixin

    register "game" do
      Game.new(
        self["display"],
        self["dictionary"]
      )
    end

    register "display" do
      Display.new
    end

    register "dictionary" do
      Dictionary.new
    end

end