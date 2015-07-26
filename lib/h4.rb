# ...F..

class Circle
    attr_reader :options

    def initialize(options={})
        @options = options
        @radius = @options[:radius]
        @color = @options[:color]
    end

    def get_radius
        @radius
    end

    def set_radius(radius=-1)
        if radius!=-1
            @radius = radius
        end
    end

    def get_color
        @color
    end

    def set_color(color="")
        if color!=""
            @color = "random undefined color"
        end
    end

    def find_area
        return 3.14159265*@radius*@radius
    end

    def find_perimeter
        return 2*3.14159265*@radius
    end

end