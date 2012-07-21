class MdemosController < ApplicationController
  # GET /mdemos
  # GET /mdemos.json
  def hello
    render('hello')
  end  
  def index
    @mdemos = Mdemo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mdemos }
    end
  end

  # GET /mdemos/1
  # GET /mdemos/1.json
  def show
    @mdemo = Mdemo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mdemo }
    end
  end

  # GET /mdemos/new
  # GET /mdemos/new.json
  def new
    @mdemo = Mdemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mdemo }
    end
  end

  # GET /mdemos/1/edit
  def edit
    @mdemo = Mdemo.find(params[:id])
  end

  # POST /mdemos
  # POST /mdemos.json
  def create
    @mdemo = Mdemo.new(params[:mdemo])

    respond_to do |format|
      if @mdemo.save
        format.html { redirect_to @mdemo, notice: 'Mdemo was successfully created.' }
        format.json { render json: @mdemo, status: :created, location: @mdemo }
      else
        format.html { render action: "new" }
        format.json { render json: @mdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mdemos/1
  # PUT /mdemos/1.json
  def update
    @mdemo = Mdemo.find(params[:id])

    respond_to do |format|
      if @mdemo.update_attributes(params[:mdemo])
        format.html { redirect_to @mdemo, notice: 'Mdemo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdemos/1
  # DELETE /mdemos/1.json
  def destroy
    @mdemo = Mdemo.find(params[:id])
    @mdemo.destroy

    respond_to do |format|
      format.html { redirect_to mdemos_url }
      format.json { head :no_content }
    end
  end
end
