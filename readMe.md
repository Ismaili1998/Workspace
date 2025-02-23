# Repot Workspace

Bienvenue dans le dépôt **workspace** ! Dans ce projet, l'objectif est de créer un script Bash (`.sh`) pour organiser les fichiers du dossier **Téléchargements**, tout en intégrant des commandes Git dans votre flux de travail.

## 🎯 Objectif de la tâche
Votre mission est d'écrire un script shell qui :
1. Organise les fichiers dans le dossier `Téléchargements` en les déplaçant dans des sous-dossiers catégorisés (ex. `Documents/`, `Images/`, `Vidéos/`, `Archives/`, etc.).

2. Utilise des commandes **Git** pour gérer les modifications et maintenir le contrôle de version.


## 📌 Exigences
- Votre script doit :

  - Créer automatiquement les sous-dossiers nécessaires s'ils n'existent pas.

  - Déplacer les fichiers en fonction de leurs extensions (ex. `.jpg`, `.png` → `Images/`, `.zip`, `.tar` → `Archives/`, etc.).

  - Utiliser **Git** pour suivre les versions du script et les modifications (les messages de commit doivent être clairs et pertinents).

  - Fournir des messages de journalisation clairs pour indiquer les actions effectuées.

- Le script doit être enregistré sous le nom **`organize_downloads.sh`**.

---

## 🛠️ Flux de travail Git
1. **Cloner ce Repository** :
   ```sh
   git clone <repo_url>
   cd workspace


1. **Créer une nouvelle branche** :
   ```sh
   git checkout -b feature/organize-usernme


3. **Faire un commit séparé pour chaque catégorie de fichiers gérée :**

   ```sh
   Fournir des messages de journalisation clairs pour indiquer les actions effectuées

    - 📸 Un commit pour la migration des photos (`.jpg`, `.png`, `.gif`).
    - 📄 Un commit pour la migration des fichiers docs (`.pdf`, `.docx`, `.txt`).
    - 📦 Un commit pour la migration des fichiers tar/archives (`.zip`, `.tar.gz`).
    - ⏳ Un commit pour l'ajout du scheduling du script** (`cronjob` ou `systemd`).

4. **Envoyer votre branche vers la Repo Remote :**
    ```sh
    git push origin feature/organize-username


5. **Créer une Pull Request (PR) pour merger votre travail dans la branche principale main:**

