module Api
    module V1
        class GeradoripsumController < ApplicationController
            def index
                ipsum = IpsumResponse.new
                ipsum.status = 'SUCCESS'
                ipsum.message = 'Lorem Ipsum gerado'
                ipsum.data = LoremIpsumGerador.generate(10,6)

                render json: ipsum,status: :ok
            end
        end
    end    
end