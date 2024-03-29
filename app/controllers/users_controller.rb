class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    #@users = User.all
    #paginação
    @users = User.page(params[:page]).per(10)#10 registros
  end

  # GET /users/1 or /users/1.json
  def show
    
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render new
      end    

    #respond_to do |format|
      ###if @user.save
        ##format.html { redirect_to @user, notice: "Usuário cadastrado com sucesso." }
        ##format.json { render :show, status: :created, location: @user }
      ##else
        ##format.html { render :new, status: :unprocessable_entity }
        ##format.json { render json: @user.errors, status: :unprocessable_entity }
      ##end
    end
  end
  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
  end


  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Usuário atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Usuário excluido com sucesso." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    ##def set_user
      ##@user = User.find(params[:id])
    ##end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:login, :password_digest)
    end
