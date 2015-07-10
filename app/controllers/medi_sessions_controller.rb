class MediSessionsController < ApplicationController
  before_action :set_medi_session, only: [:show, :edit, :update, :destroy]

  # GET /medi_sessions
  # GET /medi_sessions.json
  def index
    @medi_sessions = MediSession.all
  end

  # GET /medi_sessions/1
  # GET /medi_sessions/1.json
  def show
  end

  # GET /medi_sessions/new
  def new
    @medi_session = MediSession.new
  end

  # GET /medi_sessions/1/edit
  def edit
  end

  # POST /medi_sessions
  # POST /medi_sessions.json
  def create
    @medi_session = MediSession.new(medi_session_params)

    respond_to do |format|
      if @medi_session.save
        format.html { redirect_to @medi_session, notice: 'Medi session was successfully created.' }
        format.json { render :show, status: :created, location: @medi_session }
      else
        format.html { render :new }
        format.json { render json: @medi_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medi_sessions/1
  # PATCH/PUT /medi_sessions/1.json
  def update
    respond_to do |format|
      if @medi_session.update(medi_session_params)
        format.html { redirect_to @medi_session, notice: 'Medi session was successfully updated.' }
        format.json { render :show, status: :ok, location: @medi_session }
      else
        format.html { render :edit }
        format.json { render json: @medi_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medi_sessions/1
  # DELETE /medi_sessions/1.json
  def destroy
    @medi_session.destroy
    respond_to do |format|
      format.html { redirect_to medi_sessions_url, notice: 'Medi session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medi_session
      @medi_session = MediSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medi_session_params
      params.require(:medi_session).permit(:private, :time_start, :time_end)
    end
end
