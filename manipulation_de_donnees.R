# install.packages("readr")

# Chargez la bibliothèque readr
library(readr)

# Spécifiez le chemin vers votre fichier CSV
chemin_du_fichier <- "C:/Users/hp/Desktop/Master SID/Programmation R/manipulation de données/etudiants_senegalais.csv"

# Chargez les données du fichier CSV
donnees_etudiants <- read_csv(chemin_du_fichier, show_col_types = FALSE)

# Affichez les premières lignes des données pour vérifier qu'elles ont été correctement chargées
head(donnees_etudiants)

# Calcul de la moyenne pour chaque matière
#na.rm = TRUE
moyenne_math <- mean(donnees_etudiants$Note_Mathématiques)
moyenne_sciences <- mean(donnees_etudiants$Note_Sciences)
moyenne_litterature <- mean(donnees_etudiants$Note_Littérature)

# Affichage des moyennes
cat("Moyenne en Mathématiques:", moyenne_math, "\n")
cat("Moyenne en Sciences:", moyenne_sciences, "\n")
cat("Moyenne en Littérature:", moyenne_litterature, "\n")

# Trouver l'index de l'étudiant avec la meilleure moyenne
index_meilleure_moyenne <- which.max(donnees_etudiants$Moyenne)

# Accéder aux informations de l'étudiant avec la meilleure moyenne
nom_meilleure_moyenne <- donnees_etudiants$Nom[index_meilleure_moyenne]
prenom_meilleure_moyenne <- donnees_etudiants$Prénom[index_meilleure_moyenne]
moyenne_meilleure_moyenne <- donnees_etudiants$Moyenne[index_meilleure_moyenne]

# Afficher les informations de l'étudiant avec la meilleure moyenne
cat("Nom de l'étudiant avec la meilleure moyenne:", nom_meilleure_moyenne, "\n")
cat("Prénom de l'étudiant avec la meilleure moyenne:", prenom_meilleure_moyenne, "\n")
cat("Meilleure moyenne:", moyenne_meilleure_moyenne, "\n")
cat("Le meilleur étudiant s'appelle", prenom_meilleure_moyenne,nom_meilleure_moyenne," sa moyenne est égale à",moyenne_meilleure_moyenne )

