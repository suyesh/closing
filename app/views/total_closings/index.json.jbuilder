json.array!(@total_closings) do |total_closing|
  json.extract! total_closing, :Total_sale, :Total_pin, :Total_creditcard, :TMZ_Phone, :TMZ_Total, :Sunny_Phone, :Sunny_Total, :Raj, :Bill_paid, :Bill_Received, :Other_paid, :Other_amount, :Cash_In_Hand
  json.url total_closing_url(total_closing, format: :json)
end
