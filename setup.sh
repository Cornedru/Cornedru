#!/bin/bash

# 🎨 Script d'installation automatique du GitHub Profile pour Cornedru
# Usage: ./setup-profile.sh

set -e

echo "🚀 Installation du GitHub Profile pour Cornedru"
echo "================================================"
echo ""

# Vérifier si git est installé
if ! command -v git &> /dev/null; then
    echo "❌ Git n'est pas installé. Installe-le d'abord."
    exit 1
fi

# Vérifier si gh (GitHub CLI) est installé
if ! command -v gh &> /dev/null; then
    echo "⚠️  GitHub CLI (gh) n'est pas installé."
    echo "📥 Tu peux l'installer via: https://cli.github.com/"
    echo ""
    echo "Alternative: crée le repo manuellement et lance ce script dans le dossier cloné."
    USE_GH=false
else
    USE_GH=true
fi

USERNAME="Cornedru"
REPO_NAME="Cornedru"

echo "👤 Username: $USERNAME"
echo "📦 Repository: $REPO_NAME"
echo ""

# Option 1: Avec GitHub CLI
if [ "$USE_GH" = true ]; then
    read -p "🔑 Veux-tu que je crée le repo automatiquement avec GitHub CLI? (y/n): " CREATE_REPO
    
    if [[ "$CREATE_REPO" =~ ^[Yy]$ ]]; then
        echo "📦 Création du repository $REPO_NAME..."
        gh repo create "$REPO_NAME" --public --description "✨ My GitHub Profile" || true
        
        echo "📥 Clonage du repository..."
        git clone "https://github.com/$USERNAME/$REPO_NAME.git" || {
            echo "⚠️  Le repo existe déjà localement, on continue..."
        }
        cd "$REPO_NAME" || exit 1
    else
        echo "⏩ Passe à l'étape manuelle..."
    fi
else
    echo "📝 Étape manuelle:"
    echo "1. Va sur https://github.com/new"
    echo "2. Nomme le repo: $REPO_NAME"
    echo "3. Coche 'Add a README file'"
    echo "4. Crée le repo (Public)"
    echo "5. Clone-le localement et reviens dans ce dossier"
    echo ""
    read -p "✅ As-tu terminé? Es-tu dans le dossier du repo? (y/n): " READY
    
    if [[ ! "$READY" =~ ^[Yy]$ ]]; then
        echo "❌ D'accord, relance le script quand tu seras prêt."
        exit 0
    fi
fi

# Vérifier qu'on est dans un repo git
if [ ! -d ".git" ]; then
    echo "❌ Tu n'es pas dans un repository git. Navigue dans le dossier $REPO_NAME d'abord."
    exit 1
fi

echo ""
echo "📝 Création du README.md..."

cat > README.md << 'EOF'
# Hi, je suis Cornedru 👋  
> hacker · tech visionary · design-focused · mentor — building shiny, useful chaos.

<!-- BANNER -->
<p align="center">
  <pre align="center">
                                                                                                       
  ,ad8888ba,                                                              88                           
 d8"'    `"8b                                                             88                           
d8'                                                                       88                           
88              ,adPPYba,   8b,dPPYba,  8b,dPPYba,    ,adPPYba,   ,adPPYb,88  8b,dPPYba,  88       88  
88             a8"     "8a  88P'   "Y8  88P'   `"8a  a8P_____88  a8"    `Y88  88P'   "Y8  88       88  
Y8,            8b       d8  88          88       88  8PP"""""""  8b       88  88          88       88  
 Y8a.    .a8P  "8a,   ,a8"  88          88       88  "8b,   ,aa  "8a,   ,d88  88          "8a,   ,a88  
  `"Y8888Y"'    `"YbbdP"'   88          88       88   `"Ybbd8"'   `"8bbdP"Y8  88           `"YbbdP'Y8  
                                                                                                       
                                                                                                       
  </pre>
</p>

---

## 👁️‍🗨 Mini-bio
Je construis des outils en C / C++ / Bash / Python.  
J'automatise tout avec GitHub Actions.  
Je transforme n'importe quel README en dashboard visuel, glitchy et élégant.  
Je mélange : *low-level engineering + design-thinking + un soupçon de chaos créatif.*

---

## 🔧 Tech Stack
<p>
  <img alt="GitHub Actions" src="https://img.shields.io/badge/GitHub%20Actions-automation-2088ff?logo=githubactions&logoColor=white" /> 
  <img alt="C" src="https://img.shields.io/badge/C-systems-00599C?logo=c&logoColor=white" />
  <img alt="C++" src="https://img.shields.io/badge/C++-performance-00599C?logo=c%2B%2B&logoColor=white" />
  <img alt="Bash" src="https://img.shields.io/badge/Bash-scripting-4EAA25?logo=gnu-bash&logoColor=white" />
  <img alt="Python" src="https://img.shields.io/badge/Python-data-3776AB?logo=python&logoColor=white" />
</p>

---

## 📊 Stats & Activity
<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=Cornedru&show_icons=true&theme=radical&hide_border=true" />
  &nbsp;
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=Cornedru&layout=compact&theme=radical&hide_border=true" />
</p>

<p align="center">
  <img src="https://github-readme-streak-stats.herokuapp.com/?user=Cornedru&theme=react-dark&hide_border=true" />
</p>

<p align="center">
  <img src="https://activity-graph.herokuapp.com/graph?username=Cornedru&theme=react-dark&area=true" />
</p>

---

## ✨ Highlighted projects

<div align="center">

<a href="https://github.com/Cornedru/minishell">
  <img src="https://github-readme-stats.vercel.app/api/pin/?username=Cornedru&repo=minishell&theme=radical" />
</a>

<a href="https://github.com/Cornedru/mini_serv">
  <img src="https://github-readme-stats.vercel.app/api/pin/?username=Cornedru&repo=mini_serv&theme=radical" />
</a>

<a href="https://github.com/Cornedru/cub3D">
  <img src="https://github-readme-stats.vercel.app/api/pin/?username=Cornedru&repo=cub3D&theme=radical" />
</a>

</div>

---

## 🧩 What I build
- **Low-level tooling** : C / C++ / syscalls / parsing / memory-safe patterns  
- **Automation pipelines** boostés à l'IA (GitHub Actions avancées)  
- **Security stuff** : Wi-Fi auditing, Red Team tooling, OSINT automation  
- **Creative-dev** : dashboards, glitch aesthetics, visuals for documentation

---

## 🎯 Goals
- Construire des projets *clean, performants, visuellement sexy*  
- Partager, mentorer, documenter avec un vrai sens du design  
- Hacker, tester, explorer des concepts tech borderline

---

## 🛠 Automation
Ce profil utilise :
- GitHub Readme Stats  
- Activity Graph  
- Streak Stats  
- Badges via Shields.io  
- Un GitHub Action pour mettre à jour automatiquement la date du README  
- Un thème visuel "auto", glitch + studio créatif

---

## ⚡ Signature line
> "I design systems like a hacker, and docs like a creative studio."

<p align="center">
  <sub>Last automated update: <!--SHOW_DATE--></sub>
</p>
EOF

echo "✅ README.md créé!"
echo ""

echo "📂 Création de la structure GitHub Actions..."
mkdir -p .github/workflows

cat > .github/workflows/update-readme.yml << 'EOF'
name: Update README widgets
on:
  schedule:
    - cron: '0 6 * * *'
  workflow_dispatch:

jobs:
  update-readme:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v4

    - name: Update date placeholder
      run: |
        DATE="$(date -u '+%Y-%m-%d %H:%M UTC')"
        sed -i "s|<!--SHOW_DATE-->|$DATE|g" README.md

    - name: Commit changes
      uses: stefanzweifel/git-auto-commit-action@v4
      with:
        commit_message: "chore: update README timestamp"
        file_pattern: README.md
EOF

echo "✅ GitHub Action créée!"
echo ""

echo "📤 Commit et push des changements..."
git add .
git commit -m "🎨 Add awesome GitHub profile with automation" || {
    echo "⚠️  Rien à commiter (peut-être déjà fait?)"
}

git push origin main 2>/dev/null || git push origin master 2>/dev/null || {
    echo "❌ Erreur lors du push. Vérifie tes credentials GitHub."
    echo "💡 Tu peux push manuellement avec: git push"
    exit 1
}

echo ""
echo "🎉 INSTALLATION TERMINÉE!"
echo "========================"
echo ""
echo "✨ Ton profil est maintenant actif sur:"
echo "   👉 https://github.com/$USERNAME"
echo ""
echo "⚙️  Prochaines étapes:"
echo "1. Va dans Settings → Actions → General"
echo "2. Active 'Read and write permissions'"
echo "3. Lance l'action manuellement depuis Actions → Update README widgets"
echo ""
echo "🎨 Personnalisation:"
echo "- Édite README.md pour modifier ta bio"
echo "- Change les repos mis en avant"
echo "- Ajuste le thème (radical → dracula, tokyonight, etc.)"
echo ""
echo "🚀 Enjoy ton nouveau profil!"
