class BooKReviewsController < ApplicationController
  before_action :set_boo_k_review, only: [:show, :edit, :update, :destroy]

  # GET /boo_k_reviews
  # GET /boo_k_reviews.json
  def index
    @boo_k_reviews = BooKReview.all
  end

  # GET /boo_k_reviews/1
  # GET /boo_k_reviews/1.json
  def show
  end

  # GET /boo_k_reviews/new
  def new
    @boo_k_review = BooKReview.new
  end

  # GET /boo_k_reviews/1/edit
  def edit
  end

  # POST /boo_k_reviews
  # POST /boo_k_reviews.json
  def create
    @boo_k_review = BooKReview.new(boo_k_review_params)

    respond_to do |format|
      if @boo_k_review.save
        format.html { redirect_to @boo_k_review, notice: 'Boo k review was successfully created.' }
        format.json { render :show, status: :created, location: @boo_k_review }
      else
        format.html { render :new }
        format.json { render json: @boo_k_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boo_k_reviews/1
  # PATCH/PUT /boo_k_reviews/1.json
  def update
    respond_to do |format|
      if @boo_k_review.update(boo_k_review_params)
        format.html { redirect_to @boo_k_review, notice: 'Boo k review was successfully updated.' }
        format.json { render :show, status: :ok, location: @boo_k_review }
      else
        format.html { render :edit }
        format.json { render json: @boo_k_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boo_k_reviews/1
  # DELETE /boo_k_reviews/1.json
  def destroy
    @boo_k_review.destroy
    respond_to do |format|
      format.html { redirect_to boo_k_reviews_url, notice: 'Boo k review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boo_k_review
      @boo_k_review = BooKReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boo_k_review_params
      params.require(:boo_k_review).permit(:user_id, :book_id, :review)
    end
end
