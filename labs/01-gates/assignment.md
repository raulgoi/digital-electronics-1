TEST GIT PUSH

# Lab 1: Raul Gomez Ibanez

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   f(c,b,a) = ´b a + ´c ´b
   
   f(c,b,a)NAND = ´(´(´b a) + ´(´c ´b))
   
   f(c,b,a)NOR = ´((´b a) + (´c ´b))

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of demorgan is
begin
    forig_o  <= (not b_i and a_i) or (not c_i and not b_i);
    f_nand_o <= not(not(not b_i and a_i) or not(not c_i and not b_i))
    f_nor_o  <= not((not b_i and a_i) or (not c_i and not b_i))
end architecture dataflow;
```

3. Complete table with logic functions' values:

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 0 |
| 0 | 1 | 0 | 0 | 0 | 1 |
| 0 | 1 | 1 | 0 | 0 | 1 |
| 1 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 | 0 | 1 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![Captura de pantalla (20)](https://user-images.githubusercontent.com/91128806/153582029-b619f76b-aba7-4613-a767-77f30eed13df.png)


2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/pLm6
