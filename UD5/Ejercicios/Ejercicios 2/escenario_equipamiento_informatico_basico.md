1. As máquinas que contén o documento.

//máquina

2. A información correspondente ao hardware das máquinas.

//hardware

3. A información de configuración das máquinas.

//config

4. A lista de fabricantes dos equipos.

//fabricante

5. A lista de discos que conteñen.

//disco

6. Os enderezos IP

//IP

7. Os nomes das máquinas.

//máquina/@nome

8. Os nomes das máquinas que teñan gravadora óptica (DVD).

//equipos/máquina[hardware/gravadora[@tipo='DVD']]/@nome

9. O sistema operativo das máquinas nas que figure o "role".

//equipos/máquina/config[role]/OS
