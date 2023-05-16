class PatientCardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient_card, only: [:show, :edit, :update, :destroy]

  def index
    @patient_cards = PatientCard.all
  end

  def show
  end

  def new
    @patient_card = PatientCard.new
  end

  def create
    @patient_card = PatientCard.new(patient_card_params)

    if @patient_card.save
      redirect_to @patient_card, notice: 'Patient Card was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @patient_card.update(patient_card_params)
      redirect_to @patient_card, notice: 'Patient Card was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @patient_card.destroy
    redirect_to patient_cards_url, notice: 'Patient Card was successfully destroyed.'
  end

  private

  def set_patient_card
    @patient_card = PatientCard.find(params[:id])
  end

  def patient_card_params
    params.require(:patient_card).permit(:patient_id, :department_id, :doctor_id)
  end
end
