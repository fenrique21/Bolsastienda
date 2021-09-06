class ClientesController < ApplicationController

    #Get
    def index
        @clientes = Cliente.all

        render :ok, json: @clientes
    end

    def create
        @cliente = Cliente.new(cliente_params)

        if @cliente.save
            render :created, json: @cliente
        else
            render :bad_request, json: @cliente.errors
        end
    end

    protected
    def cliente_params
        params.require(:cliente).permit(:nombre, :nit, :direccion, :telefono)
    end
end
