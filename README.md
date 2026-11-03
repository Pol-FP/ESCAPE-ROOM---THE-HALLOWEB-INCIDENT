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
## Fase 1 - Invocació del Repositori i Contracte de Dades

### Agent 2 - Scripting/Lògica

S'ha creat la branca `projecte/defense-script` per desenvolupar l'script d'aïllament de xarxa i s'ha publicat al repositori remot mitjançant `git push -u origin projecte/defense-script`.

S'ha executat `git fetch origin` per consultar les branques remotes i investigar el treball de l'Agent 1 a `projecte/spectral-data`.

S'ha analitzat l'estructura del fitxer `data/ghost_hosts.csv` per identificar les dades necessàries per al desenvolupament de l'script de defensa.

### Contracte de dades

- **Host:** Nom del dispositiu.
- **IP:** Adreça IP de l'equip.
- **Tipus_Amenaca:** Tipus d'amenaça detectada.
- **Nivell_Risc:** Critic, Alt, Mitja o Baix.
- **Estat:** Infectat o Net.

A partir d'aquesta estructura, s'ha desenvolupat el fitxer `scripts/exorcism.sh`, encarregat de llegir el CSV, identificar els equips infectats i preparar el seu aïllament segons el nivell de risc.

### Resultat

Primera versió de l'script de defensa preparada i contracte de dades establert amb l'Agent 1 per garantir la compatibilitat entre els dos components.
