import random
import os

# Failinimed
allikas = "extensions.txt"
sihtfail = "random.txt"

# Kontrollime faili olemasolu
if os.path.exists(allikas):
    with open(allikas, "r") as f:
        laiendid = f.read().splitlines()
    
    # Valime suvalise laiendi
    valitud = random.choice(laiendid)
    
    # Lisame laiendi faili lõppu
    with open(sihtfail, "a") as f:
        f.write(valitud + "\n")
    
    print(f"Python: Lisati laiend {valitud}")
else:
    print(f"Viga: {allikas} puudub!")
