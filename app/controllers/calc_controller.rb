class CalcController < ApplicationController
    #
    @first_number = 0
    #
    @second_number = 0

    @selected_controller = 0

    def add(f,s)
        return f + s
    end

    def substract(f,s)
        return f - s 
    end

    def multiply(f,s)
        return f * s
    end

    def division(f,s)
        return f / s
    end

    def modulo(f,s)
        return f % s
        
    end

    def select_1
    end

    def select_2
        @first_number = Calc.find_by(id:1)
        @first_number.first_number = params[:first_number]
        @first_number.save
    end

    def select_controller
        @second_number = Calc.find_by(id:1)
        @second_number.second_number = params[:second_number]
        @second_number.save
    end

    def result
        @selected_controller = Calc.find_by(id:1)
        @selected_controller.selected_controller = params[:selected_controller]
        @selected_controller.save

        @number = Calc.find_by(id:1)
        if @selected_controller.selected_controller == "+"
            @Calculation_result = add(@number.first_number,@number.second_number)
        elsif @selected_controller.selected_controller == "-"
            @Calculation_result = substract(@number.first_number,@number.second_number)
        elsif @selected_controller.selected_controller == "*"
            @Calculation_result = multiply(@number.first_number,@number.second_number)
        elsif @selected_controller.selected_controller == "/"
            @Calculation_result = division(@number.first_number,@number.second_number)
        elsif @selected_controller.selected_controller == "%"
            @Calculation_result = modulo(@number.first_number,@number.second_number)
        end
    end
end
