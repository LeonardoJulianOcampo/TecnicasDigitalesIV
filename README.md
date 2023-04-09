# Uso de GHDL con GTKWave

Una vez realizado el modulo y su respectivo testbench lo que se hace es emplear los siguientes comandos

1. Chequeo de sintáxis

```bash
ghdl -s <nombre-del-archivo.vhdl>
ghdl -s <nombre-del-testbench.vhdl>
```

2. Análisis
   
   ```bash
   ghdl -a <nombre-del-archivo.vhdl>
   ghdl -a <nombre-del-testbench.vhdl>
   ```

3.

```bash
ghdl -e <nombre-del-modulo-testbench>
```

4. ```bash
   ghdl -r <nombre-del-modulo-testbench>
   ```

5. 

```bash
ghdl -r e1_tb --vcd=<nombre de archivo deseado>.vcd
```

Finalmente abrir gtkwave con el comando

```bash
gtkwave <nombre-del-archivo.vcd>
```

```python

```
