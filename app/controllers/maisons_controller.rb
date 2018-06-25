class MaisonsController < InheritedResources::Base

  before_action :set_maison, only: [:show, :edit, :update, :destroy]
  
    # GET /tranos
    # GET /tranos.json
    def index
      if agent_signed_in?
        maisonss = current_agent.maisons
        @q = maisonss.ransack(params[:q])
        @maisons = @q.result
      else
        redirect_to home_index_path
      end
    end

    # GET /tranos/1
    # GET /tranos/1.json
    def show
      @photos = @maison.photos.all
    end

    # GET /tranos/new
    def new
      @maison = Maison.new
      @photo = @maison.photos.build
    end

    # GET /tranos/1/edit
    def edit
    end

    # POST /tranos
    # POST /tranos.json
    def create
      @maison = Maison.new(maison_params)
      @maison.agent_id = params[:agent_id]
      @maison.title = params[:maison][:title]
      @maison.lieux = params[:maison][:lieux]
      @maison.duree = params[:maison][:duree]
      @maison.equipement = params[:maison][:equipement]
      @maison.prix = params[:maison][:prix].to_i

      respond_to do |format|
        if @maison.save
          params[:photos]['image'].each do |a|
            @photo = @maison.photos.create!(:image => a,     :maison_id => @maison.id)
          end
          format.html { redirect_to @maison, notice: 'Maison was successfully created.' }
          format.json { render :show, status: :created, location: @maison }
        else
          format.html { render :new }
          format.json { render json: @maison.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /tranos/1
    # PATCH/PUT /tranos/1.json
    def update
      respond_to do |format|
        if @maison.update(maison_params)
          format.html { redirect_to @maison, notice: 'Maison was successfully updated.' }
          format.json { render :show, status: :ok, location: @maison }
        else
          format.html { render :edit }
          format.json { render json: @maison.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /tranos/1
    # DELETE /tranos/1.json
    def destroy
      @maison.destroy
      respond_to do |format|
        format.html { redirect_to maisons_url, notice: 'Maison was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_maison
        @maison = Maison.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def maison_params
        params.require(:maison).permit(:agent_id, photos_attributes: [:id, :maison_id, :image])
      end
    end

