# flutter_weather_app

## Description
Cette application Flutter, pour appareil Android, récupère et affiche les données météorologiques en temps réel pour un emplacement spécifié basé sur les coordonnées géographiques (latitude et longitude). 
Les utilisateurs peuvent également sélectionner un intervalle de temps pour afficher les données météorologiques de cette période.

## Fonctionnalités
- Récupère les données météorologiques depuis l'[API Open-Meteo](https://open-meteo.com/).
- Affiche les informations météorologiques suivantes :
  - Température
  - Température ressentie
  - Humidité
  - Vitesse du vent
  - Direction du vent
  - Précipitations
  - Couverture nuageuse
- L'utilisateur peut entrer les coordonnées de latitude et de longitude.
- L'utilisateur peut sélectionner une plage de dates pour récupérer les données météorologiques pour une période spécifique.

## Captures d'écran

Home Page                  

![alt text](image.png)    


Current Weather Page

![alt text](image-1.png)    


Date Range Select Page

![alt text](image-2.png)   


Forecast Page

![alt text](image-3.png)

## Pour Commencer

### Prérequis
- Flutter SDK : Assurez-vous que Flutter est installé. Suivez le guide d'installation [ici](https://flutter.dev/docs/get-started/install).

### Installation
1. Clonez le dépôt :
   ```bash
   git clone https://github.com/Lucas34750/weather_app.git

2.  Naviguez dans le répertoire du projet :
    ```bash
    cd weather_app


3.  Installez les dépendances :
    ```bash
    flutter pub get


## Exécution de l'Application ##

1. Pour exécuter l'application sur un émulateur ou un appareil physique, assurez-vous qu'un émulateur est en cours d'exécution ou qu'un appareil est connecté.

2.  Utilisez la commande suivante pour démarrer l'application :
    ```bash
    flutter run


## Utilisation ##

1.  Entrez les coordonnées de latitude et de longitude dans les champs de texte fournis.

2.  Appuyez sur le bouton 'Rechercher' pour récupérer et afficher les données météorologiques en temps réel.

3.  Appuyez sur le bouton 'Weather Forecast' pour sélectionner une plage de dates afin d'obtenir les données météorologiques passées et/ou prévisionnelles.

## Dépendances ##

-- 'open_meteo': Utilisé pour obtenir toutes les données météorologiques depuis l'API Open-Meteo.

-- 'country_flags': Utilisé pour obtenir les Icons représentant les drapeaux des pays dans la liste 'popular'

