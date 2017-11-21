module BatchesHelper

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
