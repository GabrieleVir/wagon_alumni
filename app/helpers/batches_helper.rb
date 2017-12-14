module BatchesHelper

  def batch_gradient_color(index)
    if index.even?
      'rgba(44, 62, 80, 0.92), rgba(44, 62, 80, 0.9)'
    else
      'rgba(57, 68, 89, 0.92), rgba(57, 68, 89, 0.9)'
    end
  end

  def project_exists?(batch)
    batch.students.all.each do |student|
      if student.project_id != nil
        return true
      end
    end
    return false
  end

  def students_per_row(total_students)
    ref_total_cards = [15, 18, 21, 24, 28, 35, 40, 45]
    ref_per_row = [5, 6, 7, 6, 7, 7, 8, 9]
    i = 0
    while total_students > ref_total_cards[i] && i < ref_total_cards.length
      i += 1
    end
    ref_per_row[i]
  end

end
