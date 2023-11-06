import schedule
import time
import subprocess

script_path = "C:/Users/LENOVO/PycharmProjects/Rpa3/Test.robot"
# Définissez la fonction que vous souhaitez exécuter à intervalles réguliers
def ma_fonction():
    try:
        # Utilisez subprocess pour appeler le script Robot Framework
        subprocess.run(['robot', script_path])
        print("Script Robot Framework exécuté avec succès.")
    except Exception as e:
        print(f"Erreur lors de l'exécution du script Robot Framework : {e}")

# Créez un objet de planification
planification = schedule.every(1).minutes  # Exécuter toutes les 1 minute

# Planifiez l'exécution de la fonction
planification.do(ma_fonction)

# Vous pouvez également planifier d'autres tâches à des intervalles différents
# Exemple : exécutez une autre fonction toutes les 30 minutes
#schedule.every(30).minutes.do(une_autre_fonction)

# Vous pouvez également planifier des tâches quotidiennes, hebdomadaires, etc.
# Exemple : exécutez une fonction tous les jours à 8h00
#schedule.every().day.at("08:00").do(fonction_quotidienne)

# Boucle principale pour maintenir le script en cours d'exécution
while True:
    schedule.run_pending()
    time.sleep(1)  # Attendez une seconde entre les vérifications de planification
