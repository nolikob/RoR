class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  permits :title, :code
  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def create(subject)
    @subject = Subject.new(subject)

    if @subject.save
      redirect_to subjects_path,notice: 'Subject was successfully created'
    else
      render :new
    end
  end
  def update(subject)
    @subject = Subject.update(subject)

    if @subject.save
      redirect_to subjects_path,notice: 'Subject was successfully updated'
    else
      render :new
    end
  end
  def destroy(subject)
    @subject.destroy
    redirect_to subjects_path, notice: 'Subject was successfully removed'
  end
  private
  def subject_id(id)
    @subject = Subject.find(id)
  end
end
