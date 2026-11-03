# ESCAPE-ROOM---THE-HALLOWEB-INCIDENT
## Fase 1 - Invocació del Repositori i Contracte de Dades

### Agent 1 - Admin/Dades

S'ha creat el repositori a GitHub i s'ha preparat la branca `projecte/spectral-data` per gestionar les dades de les amenaces detectades.

S'ha creat el fitxer `data/ghost_hosts.csv`, que conté la informació dels equips de la xarxa, incloent-hi el nom del dispositiu, l'adreça IP, el tipus d'amenaça, el nivell de risc i l'estat d'infecció.

### Contracte de dades

- **Host:** Nom del dispositiu.
- **IP:** Adreça IP de l'equip.
- **Tipus_Amenaca:** Tipus d'amenaça detectada.
- **Nivell_Risc:** Critic, Alt, Mitja o Baix.
- **Estat:** Infectat o Net.

Aquesta estructura s'ha definit per facilitar el desenvolupament de l'script `exorcism.sh` de l'Agent 2 i garantir la compatibilitat entre els dos components.

### Resultat

Esquema inicial del CSV preparat per a la seva integració amb l'script de defensa.