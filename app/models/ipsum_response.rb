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

    def data
        @data
    end

    def data=(value)
        @data = value
    end

    def created_at
        @created_at.strftime('%d/%m/%Y %H:%M')
    end
    
end