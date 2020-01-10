class NotesController < ApplicationController
  def index
    @notes = Note.all.order(id: :asc)
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to(notes_path) 
    else
      # if nothing was defined here, the render would reuse create
      # When using render the params is preserved. When using redirect the forms values are reset for a new session. Also whenever we change action methods
      render(:new)
    end
  end

  def new
    @note = Note.new 
  end

  def edit
    @note = Note.find(params[:id])  
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to(notes_path)
    else
      render(:edit)
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to(notes_path)
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end
