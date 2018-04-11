class Saludo
    def initialize(nombres)
        @nombres = nombres;
    end
    def saludar()
        if @nombres.nil?
            puts "..."
        elsif @nombres.respond_to?("each")
            @nombres.each do |nombre|
                puts "Hola #{nombre},"
            end
        else
            puts "Hola #{@nombres}"
        end
    end
    def despedirse()
        if @nombres.respond_to?("join")
            despedida = @nombres.join(",")
            puts "Adios #{despedida}"
        end
    end
end

saludo = Saludo.new(["Gabriel","Albeiro"])
saludo.saludar()
saludo.despedirse()