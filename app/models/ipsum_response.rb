require 'Date'

class IpsumResponse
    
    def initialize 
        @created_at = DateTime.now        
    end

    def status
        @status
    end

    def status=(value)
        @status = value
    end

    def message
        @message
    end

    def message=(value)
        @message = value
    end

    def text
        @text
    end

    def text=(value)
        @text = value
    end

    def created_at
        @created_at.strftime('%d/%m/%Y %H:%M')
    end
    
end