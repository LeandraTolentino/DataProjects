// Scrape tables in HTML and convert to CSV format
function tableToCSV() {
  let tables = document.querySelectorAll('table');  // Get all tables from the page
  let csv = '';

  tables.forEach(table => {
    let rows = table.querySelectorAll('tr');
    rows.forEach(row => {
      let cells = row.querySelectorAll('td, th');
      let rowData = [];
      cells.forEach(cell => rowData.push(cell.innerText.trim()));
      csv += rowData.join(',') + '\n';  // Join cells with commas and add a new line after each row
    });
  });

  // Storing data in a blob
  let blob = new Blob([csv], { type: 'text/csv' });
  
  // Create a download link for the CSV file
  let link = document.createElement('a');
  link.href = URL.createObjectURL(blob);
  link.download = 'table_data.csv';
  link.click();  
}

// Calling the function
tableToCSV();
