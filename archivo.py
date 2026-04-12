import os

ruta = input("Ingresa una ruta (ej: /home/usuario): ")

if not os.path.exists(ruta):
    print("La ruta no existe")
else:
    total_archivos = 0
    total_carpetas = 0
    tamano_total = 0

    for root, dirs, files in os.walk(ruta):
        total_carpetas += len(dirs)
        total_archivos += len(files)

        for archivo in files:
            ruta_completa = os.path.join(root, archivo)
            if os.path.exists(ruta_completa):
               tamano_total += os.path.getsize(ruta_completa)

    print("\n=== Resultados ===")
    print(f"carpetas: {total_carpetas}")
    print(f"Archivos: {total_archivos}")
    print(f"Tamano total: {tamano_total} bytes")

