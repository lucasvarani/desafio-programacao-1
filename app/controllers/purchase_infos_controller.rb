class PurchaseInfosController < ApplicationController
  before_action :set_purchase_info, only: [:show, :edit, :update, :destroy]
  access_control do
      allow :administrator, :all
  end

  # GET /purchase_infos
  # GET /purchase_infos.json
  def index
    @purchase_infos = PurchaseInfo.all
    #se existe dados, soma os valores
    if @purchase_infos
      #soma o valor total
      @total_price = PurchaseInfo.total_price
      #soma o total de compras
      @total_purchases = PurchaseInfo.total_purchase
    end

  end

  # GET /purchase_infos/1
  # GET /purchase_infos/1.json
  def show
  end

  # GET /purchase_infos/new
  def new
    @purchase_info = PurchaseInfo.new
  end

  # GET /purchase_infos/1/edit
  def edit
  end

  def parse_data(data)
    PurchaseInfo.destroy_all #apenas para finalidade de atender um unico arquivo por vez, como pedido na descricao do desafio.
    data = data.split("\n")
    i = 0
    data.each do |line|
      unless i == 0
        line = data[i].split("\t")
        PurchaseInfo.create(purchaser_name: line[0], item_description: line[1], item_price: line[2], purchase_count: line[3], merchant_address: line[4], merchant_name: line[5])
      end

      i += 1
    end
    return data
  end

  # POST /purchase_infos
  # POST /purchase_infos.json
  def create
    #Verifica se existe arquivo, se não existir faz a inserção normal dos dados
    if purchase_info_params[:temp_file].present?
      data = purchase_info_params[:temp_file] if purchase_info_params.present? && purchase_info_params[:temp_file].present?
      data = data.read.force_encoding('utf-8')
      #Intera sobre as linhas
      parse_data data
      redirect_to purchase_infos_path, notice: 'File was successfully created.'
    else
      @purchase_info = PurchaseInfo.new(purchase_info_params)

      respond_to do |format|
        if @purchase_info.save
          format.html { redirect_to purchase_infos_path, notice: 'File was successfully created.' }
        else
          format.html { render :new }
          format.json { render json: [:admin, @purchase_info.errors], status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /purchase_infos/1
  # PATCH/PUT /purchase_infos/1.json
  def update
    respond_to do |format|
      if @purchase_info.update(purchase_info_params)
        format.html { redirect_to @purchase_info, notice: 'Purchase info was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_info }
      else
        format.html { render :edit }
        format.json { render json: @purchase_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_infos/1
  # DELETE /purchase_infos/1.json
  def destroy
    @purchase_info.destroy
    respond_to do |format|
      format.html { redirect_to purchase_infos_url, notice: 'Purchase info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_info
      @purchase_info = PurchaseInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_info_params
      params.require(:purchase_info).permit(:purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name, :temp_file)
    end
end
