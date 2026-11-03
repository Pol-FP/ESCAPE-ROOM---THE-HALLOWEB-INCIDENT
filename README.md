# ESCAPE-ROOM---THE-HALLOWEB-INCIDENT
FASE 1: Agent 2

1. Creació de la branca projecte/defense-script
2. Canviem a la branca que acabem de crear
3. Fem un git push -u origin per pujar tots els canvis
4. Fem un git pull per veure la branca que ha creat l'altre agent (Agent 1)

## Fase 2 - Aparició de la Branca Infectada i Issue d'Emergència

### Agent 2 - Scripting/Lògica

S'ha revisat l'estat de les branques remotes mitjançant `git fetch origin` i s'han analitzat els canvis realitzats per l'Agent 1 al fitxer de `data/ghost_hosts.csv`.

S'ha identificat la necessitat d'adaptar l'script `scripts/exorcism.sh` a la nova estructura de dades per evitar conflictes en el processament dels equips que estan infectats.

### Issue d'Emergència

S'ha rebut una Issue del professor que obliga a modificar l'script de defensa perquè tingui en compte la nova columna `Port_Infectat` i descarti els ports no crítics.

S'ha treballat conjuntament amb l'Agent 1 a la branca `hotfix/protocol-update` per implementar els canvis necessaris.

### Actualització de l'script de defensa

S'ha modificat el fitxer `scripts/exorcism.sh` per adaptar-lo al nou contracte de dades.

Les modificacions realitzades són:

- Lectura de la nova columna `Port_Infectat`.
- Identificació dels equips infectats mitjançant el fitxer CSV.
- Comprovació dels ports associats a les amenaces.
- Filtratge dels ports no crítics.
- Simulació de l'aïllament dels equips que compleixen les condicions establertes.

També s'ha revisat la vulnerabilitat detectada a la branca `feature/nightmare-code`, que permetia ignorar els equips amb un nivell de risc crític.

### Resultat

Script de defensa actualitzat per interpretar la nova estructura del CSV, filtrar els ports no crítics i detectar correctament els equips infectats.

## Fase 2 - Aparició de la Branca Infectada i Issue d'Emergència

### Agent 2 - Scripting/Lògica

S'ha revisat l'estat de les branques remotes mitjançant `git fetch origin` i s'han analitzat els canvis realitzats per l'Agent 1 al fitxer `data/ghost_hosts.csv`.

S'ha identificat la necessitat d'adaptar l'script `scripts/exorcism.sh` a la nova estructura de dades per evitar errors en el processament dels equips infectats.

### Issue d'Emergència

S'ha rebut una Issue del professor que obliga a modificar l'script de defensa perquè tingui en compte la nova columna `Port_Infectat` i descarti els ports no crítics.

S'ha treballat conjuntament amb l'Agent 1 a la branca `hotfix/protocol-update` per implementar els canvis necessaris.

### Actualització de l'script de defensa

S'ha modificat el fitxer `scripts/exorcism.sh` per adaptar-lo al nou contracte de dades.

Les modificacions realitzades són:

- Lectura de la nova columna `Port_Infectat`.
- Identificació dels equips infectats mitjançant el fitxer CSV.
- Comprovació dels ports associats a les amenaces.
- Filtratge dels ports no crítics.
- Simulació de l'aïllament dels equips que compleixen les condicions establertes.

També s'ha revisat la vulnerabilitat detectada a la branca `feature/nightmare-code`, que permetia ignorar els equips amb un nivell de risc crític.

### Resultat

Script de defensa actualitzat per interpretar la nova estructura del CSV, filtrar els ports no crítics i detectar correctament els equips infectats.

Polineator
22:56
### Fita 2 - Scrum Review

S'ha treballat conjuntament amb l'Agent 1 en la branca `hotfix/protocol-update` per adaptar l'script `scripts/exorcism.sh` a la nova estructura del fitxer CSV.

S'ha implementat la lectura de la columna `Port_Infectat`, el filtratge dels ports no crítics i la correcció de la vulnerabilitat que provocava que els equips amb risc crític fossin considerats segurs.

Un cop l'Agent 1 ha creat la **Pull Request** de `hotfix/protocol-update` cap a `main`, s'ha realitzat una revisió dels canvis per comprovar que compleixen els requisits de la Issue.

Després de verificar les modificacions, s'ha **aprovat la Pull Request i realitzat el merge a `main`**, integrant les correccions a la branca principal.

Finalment, s'ha publicat la **tag `v0.2-beta`** per identificar la nova versió del projecte.

### Resultat

Script de defensa actualitzat, Pull Request revisada i aprovada, i merge de `hotfix/protocol-update` a `main` completat correctament. Issue resolta i versió `v0.2-beta` publicada.