class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to new_contact_path, success: 'The contact was created successfully.'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :notes)
  end
end
