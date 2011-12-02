class TitularesController < ApplicationController

  before_filter :load_titular, :only => [ :new, :edit, :create, :update ]

  def index
    @titulares = Titular.all
  end

  def new
    render :new
  end

  alias :edit :new
  alias :show :new

  def create
    if @titular.update_attributes( params[:titular] )
      flash[:notice]  = 'Titular salvo com sucesso'
      redirect_to titulares_path
    else
      new
    end
  end

  alias :update :create

  protected

  def load_titular
    @titular = params[:id].blank? ? Titular.new : Titular.find(params[:id])
  end

end