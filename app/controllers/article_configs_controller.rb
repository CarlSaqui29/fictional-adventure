class ArticleConfigsController < ApplicationController
  before_action :set_article_config, only: %i[ show edit update destroy ]

  # GET /article_configs or /article_configs.json
  def index
    @article_configs = ArticleConfig.all
  end

  # GET /article_configs/1 or /article_configs/1.json
  def show
  end

  # GET /article_configs/new
  def new
    @article_config = ArticleConfig.new
  end

  # GET /article_configs/1/edit
  def edit
  end

  # POST /article_configs or /article_configs.json
  def create
    @article_config = ArticleConfig.new(article_config_params)

    respond_to do |format|
      if @article_config.save
        format.html { redirect_to article_config_url(@article_config), notice: "Article config was successfully created." }
        format.json { render :show, status: :created, location: @article_config }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_configs/1 or /article_configs/1.json
  def update
    respond_to do |format|
      if @article_config.update(article_config_params)
        format.html { redirect_to article_config_url(@article_config), notice: "Article config was successfully updated." }
        format.json { render :show, status: :ok, location: @article_config }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_configs/1 or /article_configs/1.json
  def destroy
    @article_config.destroy

    respond_to do |format|
      format.html { redirect_to article_configs_url, notice: "Article config was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_config
      @article_config = ArticleConfig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_config_params
      params.require(:article_config).permit(:title, :description)
    end
end
