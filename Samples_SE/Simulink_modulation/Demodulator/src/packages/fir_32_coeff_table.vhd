use work.bus_class.all;
use work.matrix_class.all;

package fir_32_coeff_table is

  constant coeff_array: ulogic_8_vector(31 downto 0) := 
  (
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
  
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "01111111",
  
    "01111111",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
  
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000"
  );

  constant coeff_single_array: single_vector(9 downto 0) := 
  (
    0.084913,
    -0.11019,
    -0.199,
    -0.015146,
    0.23942,
    0.23942,
    -0.015146,
    -0.199,
    -0.11019,
    0.084913
  );

end fir_32_coeff_table;