pdf.text "Metals"
pdf.move_down 10
pdf.font_size = 10

data = [
  ["Name", "Atomic Number", "Price"],
  ["Mercury", "80", number_to_currency(10)],
  ["Platinum", "78", number_to_currency(25)],
  ["Titanium", "22", number_to_currency(50)]
]

pdf.table data, header: true, column_widths: [100, 50, 50], row_colors: ["FFFFFF", "E5ECF9"] do
  columns(0).align = :left
  columns(1..2).align = :right
  row(0).text_color = "FFFFFF"
  row(0).background_color = "000000"
  row(0).columns(0..2).font_style = :bold
  row(0).columns(0..2).align = :center
end
