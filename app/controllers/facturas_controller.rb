class FacturasController < ApplicationController
     #Get
     def index
        @facturas = Factura.all

        render :ok, json: @facturas
    end

    def create
        @factura = Factura.new(factura_params)

        if @factura.save
            render :created, json: @factura
        else
            render :bad_request, json: @factura.errors
        end
    end

    protected
    def factura_params
        params.require(:factura).permit(:fecha, :total, :anulada, :cliente_id)
    end
end
