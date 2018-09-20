class CustomersController < ApplicationController
  def index
    if params[:company_id]
      customers = Customer.where(company_id: params[:company_id])
    else
      customers = Customer.all
    end

    @customers = customers.paginate(page: params[:page], per_page: 50).order(:last_name)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :action => 'new'
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to customers_path
    else
      render :action => :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end
end
