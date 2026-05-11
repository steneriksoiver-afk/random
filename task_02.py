import sys
import os

# Kontrollime sisendit
if len(sys.argv) < 2:
    print("Kasutus: python task_02.py [laiend]")
    sys.exit(1)

otsitav = sys.argv[1]
allikas = "random.txt"

if os.path.exists(allikas):
    with open(allikas, "r") as f:
        read = f.read().splitlines()
        kogus = read.count(otsitav)
    print(f"Python: Laiendit '{otsitav}' leiti {kogus} korda.")
else:
    print("Faili random.txt ei leitud.")
