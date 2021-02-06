classdef Point2D
    
    properties
        x;
        y;
    end
    
    methods
        function obj = Point2D(inputArg1, inputArg2)
            %constructs object
            obj.x = inputArg1;
            obj.y = inputArg2;
        end
        
        function dist = Distance(obj)
            %calculates distance and returns as output argument
            dist = sqrt(obj.x^2 + obj.y^2);
        end
    end
end

