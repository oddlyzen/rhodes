require 'rho/rhocontroller'
require File.join(__rhoGetCurrentDir(), 'apps','RhoSugarCRM','helpers/application_helper')

class SugarQuoteController < Rho::RhoController

  include ApplicationHelper

  #GET /SugarQuote
  def index
    @SugarQuotes = SugarQuote.find(:all)
    render
  end

  # GET /SugarQuote/1
  def show
    @SugarQuote = SugarQuote.find(@params['id'])
    render :action => :show
  end

  # GET /SugarQuote/new
  def new
    @SugarQuote = SugarQuote.new
    render :action => :new
  end

  # GET /SugarQuote/1/edit
  def edit
    @SugarQuote = SugarQuote.find(@params['id'])
    render :action => :edit
  end

  # POST /SugarQuote/create
  def create
    @SugarQuote = SugarQuote.new(@params['SugarQuote'])
    @SugarQuote.save
    redirect :action => :index
  end

  # POST /SugarQuote/1/update
  def update
    @SugarQuote = SugarQuote.find(@params['id'])
    @SugarQuote.update_attributes(@params['SugarQuote'])
    redirect :action => :index
  end

  # POST /SugarQuote/1/delete
  def delete
    @SugarQuote = SugarQuote.find(@params['id'])
    @SugarQuote.destroy
    redirect :action => :index
  end
end
