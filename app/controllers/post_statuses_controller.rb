class PostStatusesController < ApplicationController
  before_action :authenticate_member!
  before_filter :allow_to_admin_member
  before_action :set_post_status, only: [:show, :edit, :update, :destroy]

  # GET /post_statuses
  # GET /post_statuses.json
  def index
    @post_statuses = PostStatus.all
  end

  # GET /post_statuses/1
  # GET /post_statuses/1.json
  def show
  end

  # GET /post_statuses/new
  def new
    @post_status = PostStatus.new
  end

  # GET /post_statuses/1/edit
  def edit
  end

  # POST /post_statuses
  # POST /post_statuses.json
  def create
    @post_status = PostStatus.new(post_status_params)

    respond_to do |format|
      if @post_status.save
        format.html { redirect_to @post_status, notice: 'Post status was successfully created.' }
        format.json { render :show, status: :created, location: @post_status }
      else
        format.html { render :new }
        format.json { render json: @post_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_statuses/1
  # PATCH/PUT /post_statuses/1.json
  def update
    respond_to do |format|
      if @post_status.update(post_status_params)
        format.html { redirect_to @post_status, notice: 'Post status was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_status }
      else
        format.html { render :edit }
        format.json { render json: @post_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_statuses/1
  # DELETE /post_statuses/1.json
  def destroy
    @post_status.destroy
    respond_to do |format|
      format.html { redirect_to post_statuses_url, notice: 'Post status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_status
      @post_status = PostStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_status_params
      params.require(:post_status).permit(:name)
    end
end
