class CrudTestsController < ApplicationController
  before_action :set_crud_test, only: %i[ show edit update destroy ]

  # GET /crud_tests or /crud_tests.json
  def index
    @crud_tests = CrudTest.all
  end

  # GET /crud_tests/1 or /crud_tests/1.json
  def show; end

  # GET /crud_tests/new
  def new
    @crud_test = CrudTest.new
  end

  # GET /crud_tests/1/edit
  def edit; end

  # POST /crud_tests or /crud_tests.json
  def create
    @crud_test = CrudTest.new(crud_test_params)

    respond_to do |format|
      if @crud_test.save
        format.html { redirect_to crud_test_url(@crud_test), notice: "Crud test was successfully created." }
        format.json { render :show, status: :created, location: @crud_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crud_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crud_tests/1 or /crud_tests/1.json
  def update
    respond_to do |format|
      if @crud_test.update(crud_test_params)
        format.html { redirect_to crud_test_url(@crud_test), notice: "Crud test was successfully updated." }
        format.json { render :show, status: :ok, location: @crud_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crud_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crud_tests/1 or /crud_tests/1.json
  def destroy
    @crud_test.destroy

    respond_to do |format|
      format.html { redirect_to crud_tests_url, notice: "Crud test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    @crud_tests = CrudTest.where('name LIKE ?', "%#{params[:name]}%")

    render action: :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud_test
      @crud_test = CrudTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crud_test_params
      params.require(:crud_test).permit(:nome, :id_seq, :endereco, :preco, :email)
    end
end
