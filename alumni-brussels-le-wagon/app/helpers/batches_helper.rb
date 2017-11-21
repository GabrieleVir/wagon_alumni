module BatchesHelper
  # def batches_in_3_cols
  #   batches = data["batches"]
  #   batches_cols = [[], [], []]

  #   batches.each_with_index do |batch, i|
  #     batch_col = ( (i+1) % 3) - 1
  #     batches_cols[batch_col] << batch
  #   end

  #   batches_cols
  # end

  # def numb_of_batches
  #   data["batches"].length
  # end

  # def batch_id(num_col, num_row)
  #   (num_col.to_i + 1) + (num_row.to_i)*3
  # end

  # def batch_gradient_color(index)
  #   if index.even?
  #     'rgba(44, 62, 80, 0.92), rgba(44, 62, 80, 0.9)'
  #   else
  #     'rgba(57, 68, 89, 0.92), rgba(57, 68, 89, 0.9)'
  #   end
  # end

  # def student_attributes(id, student, batch)
  #   student_previous = sibling_student(:previous, id, batch)
  #   student_next = sibling_student(:next, id, batch)

  #   student_fake = student.fake ? "data-fake=\"#{student.fake}\"" : ""
  #   return "id=\"#{id}\" data-href=\"#{student.url}\" data-next=#{student_next} data-previous=#{student_previous} #{student_fake}"
  # end

  # private

  # def sibling_student(side, id, batch)
  #   step = (side == :previous ? -1 : 1)
  #   all_students = data.students["batch_#{batch}"]
  #   sibling_student = all_students[id.to_i + step]
  #   # Stop the function if previous student is nil or next student is
  #   # last student
  #   return "false" if [nil, all_students.last].include?(sibling_student)

  #   sibling_student_id = id.to_i + step
  #   sibling_student_id += step if sibling_student.fake
  #   return "\"#{sibling_student_id.to_s}\""
  # end

  def batches_in_3_cols
    batches = data["batches"]
    batches_cols = [[], [], []]
    batches.each_with_index do |batch, i|
      batch_col = ( (i+1) % 3) - 1
      batches_cols[batch_col] << batch
    end
    batches_cols
  end

  def numb_of_batches
    data["batches"].length
  end

  def batch_id(num_col, num_row)
    (num_col.to_i + 1) + (num_row.to_i)*3
  end

  def batch_gradient_color(index)
    if index.even?
      'rgba(44, 62, 80, 0.92), rgba(44, 62, 80, 0.9)'
    else
      'rgba(57, 68, 89, 0.92), rgba(57, 68, 89, 0.9)'
    end
  end

end
