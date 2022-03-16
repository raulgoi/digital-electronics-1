# Lab 5: YOUR_FIRSTNAME LASTNAME

### Flip-flops

1. Listing of VHDL architecture for T-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of t_ff_rst is
begin

PROCESS(T,CLK,RES)

VARIABLE TEMP:STD_LOGIC:='0';

    --------------------------------------------------------
    p_t_ff_rst : process(clk)
    begin
        IF(RES='1')THEN
        TEMP:='0';
        ELSIF(RISING_EDGE(CLK))THEN
        IF(T='1')THEN
        TEMP:= NOT TEMP;
        
        END IF;
        END IF;
    end process p_t_ff_rst;

    q     <= s_q;
    q_bar <= not s_q;
end architecture Behavioral;
```

2. Screenshot with simulated time waveforms. Try to simulate both flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![Captura de pantalla (25)_LI](https://user-images.githubusercontent.com/91128806/158634294-2b16d16d-4173-46c6-8317-9a8adcfb8007.jpg)


### Shift register

1. Image of the shift register `top` level schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![FLIPFLOP](https://user-images.githubusercontent.com/91128806/158638601-3dff41f0-5b46-4a16-9f45-eb1082e83e9d.png)
