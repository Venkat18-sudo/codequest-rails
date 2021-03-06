class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page], per_page:10)
  end

  def new
  	@user=User.new

  end
  def show 
  	user_id = params[:id]
  	@user=User.find(user_id)
    @microposts = @user.microposts
  end
  def create
  	@user=User.new(user_params)
  	if @user.save
  		log_in @user
  		flash[:success]="Welcome to the Sample App!"
  		redirect_to user_url(@user)
  	else
  		render 'new'
  	end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success]="Profile Successfully updated !"
        redirect_to user_url(@user)
      else
        flash[:danger]="Something went Wrong!"
        render 'edit'

      end

  end

def destroy
  User.find(params[:id]).destroy
  flash[:success] = "user deleted"
  redirect_to users_url
end


  private

  		def user_params

  			params.require(:user).permit(:name, :email, :password, :password_confirmation)
  		end  	

      def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless  @user == current_user
      end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
        
      end
=======
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
end
