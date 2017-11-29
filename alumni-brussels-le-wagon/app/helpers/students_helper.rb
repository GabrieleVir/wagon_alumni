module StudentsHelper
  def student_attributes(id, student, batch_id)
    student_previous = sibling_student(:previous, id, batch_id)
    student_next = sibling_student(:next, id, batch_id)

    # If the student has a project, puts the data-project
    if student.project_id
      project = "data-project=#{student.project_id}"
    end
    student_fake = student.fake ? "data-fake=\"#{student.fake}\"" : ""
    return "id=#{id} data-href=#{student.portfolio_url} data-next=#{student_next} data-previous=#{student_previous}  #{defined?(project) ? project : nil}  #{student_fake}"
  end

  private

  def sibling_student(side, id, batch_id)
    step = (side == :previous ? -1 : 1)
    all_students = Student.where(batch_id: batch_id)
    sibling_student = all_students[id.to_i + step]
    # Stop the function if previous student is nil or next student is
    # last student
    return "false" if [nil, all_students.last].include?(sibling_student)

    sibling_student_id = id.to_i + step
    sibling_student_id += step if sibling_student.fake
    return "#{sibling_student_id.to_s}"
  end
end
