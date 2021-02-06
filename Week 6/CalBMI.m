function [result, varargout] = CalBMI(weight, height)
%Calculate BMI based on person's height and weight.
if weight < 0 || height < 0 
    disp('BMI cannot be calculated with negative measures.') 
else
    BMI = weight/(height*height) * 703;
    if BMI <= 18.5
        result = 'Underweight';
        if nargout == 2
            varargout{1} = [1 1 0];
        end
    elseif BMI > 18.5 && BMI <= 24.9
        result = 'Normal';
        if nargout == 2
            varargout{1} = [0 1 0];
        end
    elseif BMI > 24.9 && BMI <= 29.9
        result = 'Overweight';
        if nargout == 2
            varargout{1} = [1 1 0];
        end
    elseif BMI > 29.9
        result = 'Obese';
        if nargout == 2
            varargout{1} = [1 0 0];
        end
    end
end
end
