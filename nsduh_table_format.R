
nsduh_table_format = function(table_order, drug_name){
  out_table = 
    nsduh_html |> 
    html_table() |> 
    nth(table_order) |>
    slice(-1) |> 
    mutate(drug = drug_name)
  return(out_table)
}