class ContactsController < ApplicationController

  before_filter do
    @user = User.find(params[:user_id])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]

    if @contact.save

      @user.contacts << @contact

      redirect_to user_path(@user)
    else
      render action: 'new'
    end
  end


  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      redirect_to user_path(@user)
    else
      render action: 'edit'
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to user_path(@user)
  end

end