module Api
    module V1
        class GeradoripsumController < ApplicationController
            def index
                ipsum = IpsumResponse.new
                ipsum.status = 'SUCCESS'
                ipsum.message = 'Lorem Ipsum gerado'
                ipsum.data = LoremIpsumGerador.generate(params[:paragraphs].to_i,params[:phrases].to_i)

                render json: ipsum,status: :ok
            end
        end
    end    
end