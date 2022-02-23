# Lab 2: YOUR_FIRSTNAME LASTNAMEE

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![Greater than](https://user-images.githubusercontent.com/91128806/155296850-59426b64-dfdc-4ef2-82fa-e9819c71dbbb.png)


   Less than:

   ![Less than](https://user-images.githubusercontent.com/91128806/155296934-80bc9f11-b778-4377-8e7e-93b2f28e5637.png)


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Funciones](https://user-images.githubusercontent.com/91128806/155296959-38cae003-d521-4891-b8d2-d74d2b55480a.png)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx62**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0110"; -- My first number is 6
        s_a <= "0010"; -- My second number is 2
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0110, 0010 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![your figure]()

3. Link to your public EDA Playground example:

This is my link to the EDA Playgroung of the lab 02-logic:
   https://www.edaplayground.com/x/jyBu
