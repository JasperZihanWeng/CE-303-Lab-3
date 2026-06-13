create_clock -name CLK -period 2 -waveform {0 1} [get_ports CLK]

set_output_delay -max 0.5 -clock CLK [get_ports {OUT1 OUT2 OUT3 OUT4 OUT5 OUT6 OUT7 OUT8 OUT9}]
set_output_delay -min -0.2 -clock CLK [get_ports {OUT1 OUT2 OUT3 OUT4 OUT5 OUT6 OUT7 OUT8 OUT9}]

set_input_delay -max 0.5 -clock CLK [get_ports {IN1 IN2 IN3 W1 W2 W3}]
set_input_delay -min -0.2 -clock CLK [get_ports {IN1 IN2 IN3 W1 W2 W3}]