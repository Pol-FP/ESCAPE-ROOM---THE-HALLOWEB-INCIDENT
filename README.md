# ESCAPE-ROOM---THE-HALLOWEB-INCIDENT

## Fase 1 - Invocació del Repositori i Contracte de Dades

### Agent 1 - Admin/Dades

S'ha creat el repositori a GitHub i s'ha preparat la branca `projecte/spectral-data` per gestionar les dades de les amenaces detectades.

S'ha creat el fitxer `data/ghost_hosts.csv`, que conté la informació dels equips de la xarxa, incloent-hi el nom del dispositiu, l'adreça IP, el tipus d'amenaça, el nivell de risc i l'estat d'infecció.

#### Contracte de dades

- **Host:** Nom del dispositiu.
- **IP:** Adreça IP de l'equip.
- **Tipus_Amenaca:** Tipus d'amenaça detectada.
- **Nivell_Risc:** Critic, Alt, Mitja o Baix.
- **Estat:** Infectat o Net.

Aquesta estructura s'ha definit per facilitar el desenvolupament de l'script `exorcism.sh` de l'Agent 2 i garantir la compatibilitat entre els dos components.

#### Resultat

Esquema inicial del CSV preparat per a la seva integració amb l'script de defensa.

### Agent 2 - Scripting/Lògica

S'ha creat la branca `projecte/defense-script` per desenvolupar l'script d'aïllament de xarxa i s'ha publicat al repositori remot mitjançant `git push -u origin projecte/defense-script`.

S'ha executat `git fetch origin` per consultar les branques remotes i investigar el treball de l'Agent 1 a `projecte/spectral-data`.

S'ha analitzat l'estructura del fitxer `data/ghost_hosts.csv` per identificar les dades necessàries per al desenvolupament de l'script de defensa.

#### Contracte de dades

S'han identificat les columnes del fitxer CSV:

- **Host:** Nom del dispositiu.
- **IP:** Adreça IP de l'equip.
- **Tipus_Amenaca:** Tipus d'amenaça detectada.
- **Nivell_Risc:** Critic, Alt, Mitja o Baix.
- **Estat:** Infectat o Net.

A partir d'aquesta estructura, s'ha desenvolupat el fitxer `scripts/exorcism.sh`, encarregat de llegir el CSV, identificar els equips infectats i preparar el seu aïllament segons el nivell de risc.

#### Resultat

Primera versió de l'script de defensa preparada i contracte de dades establert amb l'Agent 1 per garantir la compatibilitat entre els dos components.

---

## Fase 2 - Aparició de la Branca Infectada i Issue d'Emergència

### Agent 1 - Admin/Dades

S'ha detectat una nova branca remota anomenada `feature/nightmare-code`, que conté una versió modificada de l'script de defensa.

S'ha executat `git fetch origin` per actualitzar les branques remotes i investigar el contingut de la branca infectada.

Durant l'anàlisi del fitxer `scripts/exorcism.sh`, s'ha identificat una modificació maliciosa que provocava que els equips amb un nivell de risc crític fossin considerats segurs, evitant el seu aïllament.

#### Issue d'Emergència

S'ha rebut una Issue del professor que obliga a modificar l'estructura del fitxer `data/ghost_hosts.csv`, afegint una nova columna anomenada `Port_Infectat`.

S'ha coordinat amb l'Agent 2 la creació de la branca `hotfix/protocol-update` per actualitzar el contracte de dades i garantir la compatibilitat amb l'script de defensa.

#### Actualització del contracte de dades

- **Host:** Nom del dispositiu.
- **IP:** Adreça IP de l'equip.
- **Tipus_Amenaca:** Tipus d'amenaça detectada.
- **Nivell_Risc:** Critic, Alt, Mitja o Baix.
- **Estat:** Infectat o Net.
- **Port_Infectat:** Port associat a l'amenaça detectada.

S'ha actualitzat el fitxer CSV incorporant la nova columna i s'han revisat les dades dels equips infectats.

#### Fita 2 - Scrum Review

S'ha resolt la Issue d'emergència mitjançant la branca `hotfix/protocol-update`, actualitzant el fitxer `data/ghost_hosts.csv` amb la nova columna `Port_Infectat` i adaptant el contracte de dades.

També s'ha corregit la vulnerabilitat detectada a la branca `feature/nightmare-code`, que permetia ignorar els equips amb un nivell de risc crític.

Un cop finalitzades les modificacions, s'ha creat una **Pull Request** des de la branca `hotfix/protocol-update` cap a `main`, sol·licitant la revisió de l'Agent 2.

Després de l'aprovació i integració dels canvis per part de l'Agent 2, s'ha publicat la **tag `v0.2-beta`**, identificant la segona versió del projecte.

#### Resultat

Issue d'emergència resolta, vulnerabilitat corregida i Pull Request creada i revisada correctament. La branca `hotfix/protocol-update` ha quedat integrada a `main` i s'ha publicat la versió `v0.2-beta`.

### Agent 2 - Scripting/Lògica

S'ha revisat l'estat de les branques remotes mitjançant `git fetch origin` i s'han analitzat els canvis realitzats per l'Agent 1 al fitxer `data/ghost_hosts.csv`.

S'ha identificat la necessitat d'adaptar l'script `scripts/exorcism.sh` a la nova estructura de dades per evitar errors en el processament dels equips infectats.

#### Issue d'Emergència

S'ha rebut una Issue del professor que obliga a modificar l'script de defensa perquè tingui en compte la nova columna `Port_Infectat` i descarti els ports no crítics.

S'ha treballat conjuntament amb l'Agent 1 a la branca `hotfix/protocol-update` per implementar els canvis necessaris.

#### Actualització de l'script de defensa

S'ha modificat el fitxer `scripts/exorcism.sh` per adaptar-lo al nou contracte de dades.

Les modificacions realitzades són:

- Lectura de la nova columna `Port_Infectat`.
- Identificació dels equips infectats mitjançant el fitxer CSV.
- Comprovació dels ports associats a les amenaces.
- Filtratge dels ports no crítics.
- Simulació de l'aïllament dels equips que compleixen les condicions establertes.

També s'ha revisat la vulnerabilitat detectada a la branca `feature/nightmare-code`, que permetia ignorar els equips amb un nivell de risc crític.

#### Fita 2 - Scrum Review

S'ha treballat conjuntament amb l'Agent 1 en la branca `hotfix/protocol-update` per adaptar l'script `scripts/exorcism.sh` a la nova estructura del fitxer CSV.

S'ha implementat la lectura de la columna `Port_Infectat`, el filtratge dels ports no crítics i la correcció de la vulnerabilitat que provocava que els equips amb risc crític fossin considerats segurs.

Un cop l'Agent 1 ha creat la **Pull Request** de `hotfix/protocol-update` cap a `main`, s'ha realitzat una revisió dels canvis per comprovar que compleixen els requisits de la Issue.

Després de verificar les modificacions, s'ha **aprovat la Pull Request i realitzat el merge a `main`**, integrant les correccions a la branca principal.

Finalment, s'ha publicat la **tag `v0.2-beta`** per identificar la nova versió del projecte.

#### Resultat

Script de defensa actualitzat, Pull Request revisada i aprovada, i merge de `hotfix/protocol-update` a `main` completat correctament. Issue resolta i versió `v0.2-beta` publicada.