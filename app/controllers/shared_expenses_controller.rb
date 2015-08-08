class SharedExpensesController < ApplicationController
  before_action :set_shared_expense, only: [:show, :edit, :update, :destroy]

  # GET /shared_expenses
  # GET /shared_expenses.json
  def index
    @shared_expenses = SharedExpense.all
  end

  # GET /shared_expenses/1
  # GET /shared_expenses/1.json
  def show
  end

  # GET /shared_expenses/new
  def new
    @shared_expense = SharedExpense.new
  end

  # GET /shared_expenses/1/edit
  def edit
  end

  # POST /shared_expenses
  # POST /shared_expenses.json
  def create
    @shared_expense = SharedExpense.new(shared_expense_params)

    respond_to do |format|
      if @shared_expense.save
        format.html { redirect_to root_url, notice: 'Shared expense was successfully created.' }
        format.json { render :show, status: :created, location: @shared_expense }
      else
        format.html { render :new }
        format.json { render json: @shared_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_expenses/1
  # PATCH/PUT /shared_expenses/1.json
  def update
    respond_to do |format|
      if @shared_expense.update(shared_expense_params)
        format.html { redirect_to @shared_expense, notice: 'Shared expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_expense }
      else
        format.html { render :edit }
        format.json { render json: @shared_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_expenses/1
  # DELETE /shared_expenses/1.json
  def destroy
    @shared_expense.destroy
    respond_to do |format|
      format.html { redirect_to shared_expenses_url, notice: 'Shared expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_expense
      @shared_expense = SharedExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_expense_params
      params.require(:shared_expense).permit(:duedate, :parties, :amount)
    end
end
