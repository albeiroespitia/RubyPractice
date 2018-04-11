class Saludo
    def initialize(nombre = "Albeiro")
        @nombre = nombre;
    end
    def saludar()
        puts "Hola #{@nombre}"
    end
    def despedirse()
        puts "Adios #{@nombre}"
    end
end

saludo = Saludo.new("Gabriel")
saludo.saludar()
saludo.despedirse()

puts saludo.respond_to?("not declared method")