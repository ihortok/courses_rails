class Curator::CoursesController < Curator::BaseController
  before_action :set_course, only: %i[show edit update]

  def index
    @courses = Course.all
  end

  def show; end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to [:curator, @course], notice: 'Course was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to [:curator, @course], notice: 'Course was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to curator_courses_url, notice: 'Course was successfully destroyed.' }
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :desc, :start_at, :end_at, :curator_id)
  end
end
