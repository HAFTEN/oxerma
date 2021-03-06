class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]
  before_action only: [:show, :edit, :update, :destroy] {authorize @organization}
  before_action only: [:index, :new, :create] {authorize Organization}

  # GET /organizations
  def index
    @organizations = Organization.order(created_at: :desc).all
  end

  # GET /organizations/1
  def show
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  def create
    @organization = current_user.organizations.new organization_new_params
    begin
      current_user.save!
      current_user.add_role :admin, @organization
      redirect_to @organization, flash: {success: 'Организация успешно создана'}
    rescue ActiveRecord::RecordInvalid
      render :new
    end
  end

  # PATCH/PUT /organizations/1
  def update
    @organization.update! organization_edit_params
    redirect_to @organization, flash: {success: 'Организация успешно обновлена'}
  rescue
    render :edit
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy!
    redirect_to organizations_url, flash: {success: 'Организация успешно уничтожена'}
  rescue ActiveRecord::RecordNotDestroyed => e
    redirect_to @user, flash: {alert: e.message}
  end

  private

  def set_organization
    @organization = Organization.find params[:id]
  rescue ActiveRecord::RecordNotFound => e
    redirect_to organizations_path, flash: {alert: e.message}
  end

  def organization_new_params
    params.require(:organization)
        .permit :psrn, :name,
                :category, :email,
                :phone, :image
  end

  def organization_edit_params
    params.require(:organization)
        .permit :name, :category,
                :email, :phone, :biography,
                :image, :remove_image
  end
end
