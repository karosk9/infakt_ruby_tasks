class PassedOrFailed

  def initialize(students, pass_limit)
    @students = students
    @pass_limit = pass_limit.to_i
  end

  def perform
    results = {
      :failed => {},
      :passed => {}
    }
    @students.each do |student_name, score|
      score = score.to_i
      if score < @pass_limit
        results[:failed][student_name] = score
      else
        results[:passed][student_name] = score
      end
    end
    results
  end
end
