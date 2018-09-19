class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customers = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to customers_path
    else
      render :action => 'new'
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes params[:customer]
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
end
