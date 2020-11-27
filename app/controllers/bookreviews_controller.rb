class BookreviewsController < ApplicationController
  before_action :set_bookreview, only: [:show, :edit, :update, :destroy]

  # GET /bookreviews
  # GET /bookreviews.json
  def index
    @bookreviews = Bookreview.all
  end

  # GET /bookreviews/1
  # GET /bookreviews/1.json
  def show
  end

  # GET /bookreviews/new
  def new
    @bookreview = Bookreview.new
  end

  # GET /bookreviews/1/edit
  def edit
  end

  # POST /bookreviews
  # POST /bookreviews.json
  def create
    @bookreview = Bookreview.new(bookreview_params)

    respond_to do |format|
      if @bookreview.save
        format.html { redirect_to @bookreview, notice: 'Bookreview was successfully created.' }
        format.json { render :show, status: :created, location: @bookreview }
      else
        format.html { render :new }
        format.json { render json: @bookreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookreviews/1
  # PATCH/PUT /bookreviews/1.json
  def update
    respond_to do |format|
      if @bookreview.update(bookreview_params)
        format.html { redirect_to @bookreview, notice: 'Bookreview was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookreview }
      else
        format.html { render :edit }
        format.json { render json: @bookreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookreviews/1
  # DELETE /bookreviews/1.json
  def destroy
    @bookreview.destroy
    respond_to do |format|
      format.html { redirect_to bookreviews_url, notice: 'Bookreview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookreview
      @bookreview = Bookreview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookreview_params
      params.require(:bookreview).permit(:user_id, :book_id, :review)
    end
end
