# --- FUNCIÓN RESTAURADA: plot_gain_peak ---
def plot_gain_peak(csv_file, title="Ganancia Pico vs Frecuencia"):
    # Grafica la ganancia máxima (dB(GainTotal)) en función de la frecuencia a partir de un CSV
    import pandas as pd
    import matplotlib.pyplot as plt
    df = pd.read_csv(csv_file)
    # Detectar nombres de columnas
    freq_col = None
    gain_col = None
    for col in df.columns:
        if "freq" in col.lower():
            freq_col = col
        if "gain" in col.lower():
            gain_col = col
    if freq_col is None or gain_col is None:
        raise ValueError("No se encontraron columnas de frecuencia o ganancia en el CSV.")
    freq = df[freq_col].to_numpy(dtype=float)
    gain = df[gain_col].to_numpy(dtype=float)
    fig, ax = plt.subplots(figsize=(7,4))
    ax.plot(freq, gain, marker="o", linestyle="-", color="blue", label="Ganancia Pico")
    ax.set_xlabel("Frecuencia [GHz]")
    ax.set_ylabel("Ganancia Pico [dB]")
    ax.set_title(title)
    ax.grid(True, alpha=0.4)
    ax.legend()
    plt.tight_layout()
    plt.show()
def plot_input_impedance_smith(csv_file, z0=50, title="Impedancia de Entrada (Smith)"):
    # Grafica la impedancia de entrada en un diagrama de Smith a partir de un CSV
    import re
    try:
        import matplotlib.pyplot as plt
        import numpy as np
        import matplotlib.patches as mpatches
    except ImportError:
        raise ImportError("matplotlib y numpy son requeridos para esta función.")

    df = pd.read_csv(csv_file)
    # Detectar nombres de columnas
    """
    Plotea el abacado de Smith usando los valores de St11 ya normalizados (coeficiente de reflexión).
    El CSV debe tener columnas: 'Freq [GHz]', 'St11 []' (complejo como string, ya normalizado).
    freq_marks: lista de frecuencias (en GHz) a marcar en el gráfico.
    save_path: si se provee, guarda la figura en esa ruta.
    """
    try:
        import pandas as pd
        import numpy as np
        import matplotlib.pyplot as plt
    except ImportError:
        raise ImportError("matplotlib, numpy y pandas son requeridos para esta función.")

    # Leer CSV
    df = pd.read_csv(csv_path)
    # Parsear números complejos de la columna 'St11 []'
    def parse_complex(s):
        s = s.replace('i', 'j').replace(' ', '')
        return complex(s)
    gamma = df['St11 []'].apply(parse_complex).values
    freq = df['Freq [GHz]'].values
    # Dibujar círculo unitario (Smith)
def plot_input_impedance_smith(csv_file, freq_marks=[0.8, 0.9, 1.0], save_path=None):
    # Plotea el abacado de Smith usando los valores de St11 ya normalizados (coeficiente de reflexión)
    try:
        import pandas as pd
        import numpy as np
        import matplotlib.pyplot as plt
    except ImportError:
        raise ImportError("matplotlib, numpy y pandas son requeridos para esta función.")

    # Leer CSV
    df = pd.read_csv(csv_file)
    # Parsear números complejos de la columna 'St11 []'
    def parse_complex(s):
        s = s.replace('i', 'j').replace(' ', '')
        return complex(s)
    gamma = df['St11 []'].apply(parse_complex).values
    freq = df['Freq [GHz]'].values
    # Dibujar círculo unitario (Smith)
    fig, ax = plt.subplots(figsize=(6,6))
    theta = np.linspace(0, 2*np.pi, 400)
    ax.plot(np.cos(theta), np.sin(theta), '--', color='gray', lw=1)
    # Graficar trayectoria de St11
    ax.plot(np.real(gamma), np.imag(gamma), '-', color='b', label='Trayectoria')
    # Marcar frecuencias de interés
    for f_mark in freq_marks:
        idx = (np.abs(freq - f_mark)).argmin()
        ax.plot(np.real(gamma[idx]), np.imag(gamma[idx]), 'o', label=f'{freq[idx]:.2f} GHz')
        ax.text(np.real(gamma[idx]), np.imag(gamma[idx]), f'{freq[idx]:.2f}', fontsize=9, ha='right', va='bottom')
    # Marcar frecuencia mínima y máxima
    ax.plot(np.real(gamma[0]), np.imag(gamma[0]), 's', color='g', label=f'{freq[0]:.2f} GHz (min)')
    ax.text(np.real(gamma[0]), np.imag(gamma[0]), f'{freq[0]:.2f}', fontsize=9, ha='left', va='top', color='g')
    ax.plot(np.real(gamma[-1]), np.imag(gamma[-1]), 's', color='r', label=f'{freq[-1]:.2f} GHz (max)')
    ax.text(np.real(gamma[-1]), np.imag(gamma[-1]), f'{freq[-1]:.2f}', fontsize=9, ha='left', va='top', color='r')
    # Formato
    ax.set_xlabel('Re')
    ax.set_ylabel('Im')
    ax.set_title('Abacado de Smith (St11, coef. reflexión)')
    ax.set_aspect('equal')
    ax.set_xlim(-1.1, 1.1)
    ax.set_ylim(-1.1, 1.1)
    ax.grid(True, which='both', linestyle=':')
    ax.legend(loc='best', fontsize=8)
    if save_path is not None:
        plt.savefig(save_path, bbox_inches='tight', dpi=200)
    plt.show()
    plt.show()
def plot_input_impedance(csv_file, title="Impedancia de Entrada"):
    # Grafica la impedancia de entrada (Re y Im) vs frecuencia a partir de un CSV
    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    import re
    df = pd.read_csv(csv_file)
    # Detectar nombres de columnas
    freq_col = None
    st_col = None
    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    # Leer CSV y extraer columnas
    df = pd.read_csv(csv_file)
    freq = df['Freq [GHz]'].to_numpy(dtype=float)
    st_data = df['St11 []'].astype(str).to_numpy()
    # Extraer parte real e imaginaria de la columna tipo 'Re - Imi' o 'Re + Imi'
    re_zin = np.zeros_like(freq)
    im_zin = np.zeros_like(freq)
    for i, val in enumerate(st_data):
        val = val.replace(' ', '').replace('i', '')
        # Buscar el signo de la parte imaginaria
        if '+' in val[1:]:
            parts = val.split('+')
            re_zin[i] = float(parts[0])
            im_zin[i] = float(parts[1])
        elif '-' in val[1:]:
            idx = val[1:].find('-') + 1
            re_zin[i] = float(val[:idx])
            im_zin[i] = float(val[idx:])
        else:
            re_zin[i] = float('nan')
            im_zin[i] = float('nan')
    # Frecuencias a marcar
    f_targets = [freq[0], 0.8, 0.9, 1.0, freq[-1]]
    re_marks = np.interp(f_targets, freq, re_zin)
    im_marks = np.interp(f_targets, freq, im_zin)
    fig, ax = plt.subplots(figsize=(8, 5))
    ax.plot(freq, re_zin, label="Re(Zin)", color="blue")
    ax.plot(freq, im_zin, label="Im(Zin)", color="red")
    # Marcar los puntos solicitados
    for f, re_v, im_v in zip(f_targets, re_marks, im_marks):
        ax.plot(f, re_v, "o", color="blue")
        ax.plot(f, im_v, "o", color="red")
        ax.annotate(f"{f:.2f} GHz\nRe={re_v:.3f}\nIm={im_v:.3f}",
                    xy=(f, re_v), xytext=(0, 15), textcoords="offset points",
                    ha="center", color="blue", fontsize=8, arrowprops=dict(arrowstyle="->", color="blue", lw=0.7))
    ax.set_xlabel("Frecuencia [GHz]")
    ax.set_ylabel("Impedancia de Entrada [Ohm]")
    ax.set_title(title)
    ax.grid(True, alpha=0.4)
    ax.legend()
    plt.tight_layout()
    plt.show()
    df = pd.read_csv(csv_file)
    # Detectar nombres de columnas
    freq_col = None
    gain_col = None
    for col in df.columns:
        if "freq" in col.lower():
            freq_col = col
        if "gain" in col.lower():
            gain_col = col
    if freq_col is None or gain_col is None:
        ##print("[ADVERTENCIA] No se encontraron columnas de frecuencia o ganancia en el CSV. No se generará el gráfico.")
        return None

    freq = df[freq_col].to_numpy(dtype=float)
    gain = df[gain_col].to_numpy(dtype=float)

    fig, ax = plt.subplots(figsize=(8, 5))
    ax.plot(freq, gain, marker="o", linestyle="-", color="blue", label="Ganancia Pico")
    ax.set_xlabel("Frecuencia [GHz]")
    ax.set_ylabel("Ganancia Pico [dB]")
    ax.set_title(title)
    ax.grid(True, alpha=0.4)
    ax.legend()
    plt.tight_layout()
    plt.show()
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def plot_phi0_phi90(csv_file, title="Patrón de radiación"):
    # Dibuja el patron polar para Phi=0 y Phi=90 a partir de un CSV

    # -------- helpers --------
    def normalize180(a_deg):
        # Normaliza angulos a (-180, 180]
        return ((a_deg + 180.0) % 360.0) - 180.0

    def interp_at_x(x, y, x0):
        # Interpolacion lineal y(x0) con x ordenado ascendente y x0 dentro del rango
        i = np.searchsorted(x, x0)
        if i == 0:
            return y[0]
        if i >= len(x):
            return y[-1]
        x1, x2 = x[i-1], x[i]
        y1, y2 = y[i-1], y[i]
        t = (x0 - x1) / (x2 - x1) if x2 != x1 else 0.0
        return y1 + t * (y2 - y1)

    def beamwidth_center(angles_deg, gains_db, center_deg):
        # Calcula ganancia en el centro, cruces -3 dB y ancho de haz alrededor de center_deg
        # ángulos relativos al centro en (-180, 180]
        a_rel = normalize180(angles_deg - center_deg)
        # ordenar por ángulo relativo
        idx = np.argsort(a_rel)
        a_rel = a_rel[idx]
        g = gains_db[idx]

        # ganancia en el centro (a_rel=0) por interpolación
        g_center = interp_at_x(a_rel, g, 0.0)
        level = g_center - 3.0

        # cruces con el nivel -3 dB
        above = g >= level
        crossings = []
        for i in range(1, len(g)):
            if above[i-1] != above[i]:
                a1, a2 = a_rel[i-1], a_rel[i]
                g1, g2 = g[i-1], g[i]
                # interpolación lineal exacta al nivel
                t = (level - g1) / (g2 - g1)
                a_cross = a1 + t * (a2 - a1)
                crossings.append(a_cross)

        # elegir el cruce más cercano por el lado negativo y positivo
        left = max([c for c in crossings if c < 0], default=None)
        right = min([c for c in crossings if c > 0], default=None)

        if left is None or right is None:
            bw = None
        else:
            bw = right - left  # ambos en grados relativos

        # volver a ángulo absoluto (en rango -180..180) para marcar en la gráfica
        left_abs = None if left is None else normalize180(left + center_deg)
        right_abs = None if right is None else normalize180(right + center_deg)
        return {
            "gain_center_db": g_center,
            "level_3db_db": level,
            "left_deg": left_abs,
            "right_deg": right_abs,
            "bw_deg": None if bw is None else float(bw),
        }

    # -------- leer datos --------
    df = pd.read_csv(csv_file)
    # columnas esperadas
    phi_col = "Phi [deg]"
    theta_col = "Theta [deg]"
    gain_col = "dB(GainTotal) []"

    # separar por Phi
    def subset_for_phi(phi_target):
        m = np.isclose(df[phi_col].values.astype(float), float(phi_target), atol=1e-6)
        sub = df.loc[m, [theta_col, gain_col]].copy()
        sub.sort_values(theta_col, inplace=True)
        return sub[theta_col].to_numpy().astype(float), sub[gain_col].to_numpy().astype(float)

    # puede que alguna Phi no exista: controlamos eso
    series = {}
    for phi, color in [(0, "red"), (90, "green")]:
        try:
            th, gg = subset_for_phi(phi)
            if th.size > 1:
                series[phi] = {"theta": th, "gain": gg, "color": color}
        except Exception:
            pass

    if not series:
        raise ValueError("No se encontraron datos para Phi=0° ni Phi=90° en el CSV.")

    # -------- figura --------
    fig, ax = plt.subplots(subplot_kw={"projection": "polar"}, figsize=(7, 7))
    ax.set_theta_zero_location("N")
    ax.set_theta_direction(-1)
    ax.set_title(title, va="bottom")

    results = {}

    for phi, entry in series.items():
        th_deg = entry["theta"]
        g_db = entry["gain"]
        col = entry["color"]

        # curva: puntos finos + línea
        ax.plot(np.deg2rad(th_deg), g_db, ".", ms=2, color=col, alpha=0.9)
        ax.plot(np.deg2rad(th_deg), g_db, "-", lw=1.2, color=col, alpha=0.9, label=f"Phi = {phi}°")

        # --- medidas centradas en 0° ---
        m0 = beamwidth_center(th_deg, g_db, center_deg=0.0)
        # marcar ganancia en 0°
        ax.plot(np.deg2rad(0), m0["gain_center_db"], "v", color=col, ms=7)
        ax.text(np.deg2rad(0), m0["gain_center_db"]+0.8, f"{m0['gain_center_db']:.2f} dB", color=col, ha="center")

        # marcar cruces -3 dB alrededor de 0°
        for side in ["left_deg", "right_deg"]:
            if m0[side] is not None:
                ax.plot(np.deg2rad(m0[side]), m0["level_3db_db"], "o", color=col, ms=6)
        if m0["bw_deg"] is not None:
            ax.text(np.deg2rad(20), np.nanmin(g_db)+1.5, f"BW@0° (Phi {phi}°): {m0['bw_deg']:.1f}°", color=col)

        # --- medidas centradas en -180° (== 180°) ---
        m180 = beamwidth_center(th_deg, g_db, center_deg=-180.0)
        for side in ["left_deg", "right_deg"]:
            if m180[side] is not None:
                ax.plot(np.deg2rad(m180[side]), m180["level_3db_db"], "s", color=col, ms=5, alpha=0.9)
        if m180["bw_deg"] is not None:
            ax.text(np.deg2rad(-160), np.nanmin(g_db)+3.0, f"BW@-180° (Phi {phi}°): {m180['bw_deg']:.1f}°", color=col)

        # guardar resultados
        results[phi] = {"center_0": m0, "center_-180": m180}

    # límites radiales y leyenda
    all_g = np.concatenate([s["gain"] for s in series.values()])
    ax.set_rlim(np.nanmin(all_g) - 4, np.nanmax(all_g) + 2)
    ax.grid(True, alpha=0.5)
    ax.legend(loc="upper right", bbox_to_anchor=(1.25, 1.05))
    plt.tight_layout()
    plt.show()

    return results


# ----------- NUEVA FUNCION PARA RETURN LOSS -----------
def plot_return_loss(csv_file, title="Return Loss"):
    # Grafica el Return Loss (S11) a partir de un archivo CSV
    df = pd.read_csv(csv_file)
    # Detectar nombres de columnas
    freq_col = None
    s11_col = None
    for col in df.columns:
        if "freq" in col.lower():
            freq_col = col
        if "s11" in col.lower() or "st11" in col.lower():
            s11_col = col
    if freq_col is None or s11_col is None:
        raise ValueError("No se encontraron columnas de frecuencia o S11 en el CSV.")

    freq = df[freq_col].to_numpy(dtype=float)
    s11 = df[s11_col].to_numpy(dtype=float)

    # Buscar puntos donde S11 < -10 dB
    mask = s11 < -10
    if not np.any(mask):
        raise ValueError("No hay ningún punto con S11 < -10 dB.")

    idx = np.where(mask)[0]
    idx_start = idx[0]
    idx_end = idx[-1]
    f_start = freq[idx_start]
    f_end = freq[idx_end]
    bw = f_end - f_start

    # Graficar
    fig, ax = plt.subplots(figsize=(8, 5))
    ax.plot(freq, s11, label="S11 (dB)", color="blue")
    ax.axhline(-10, color="red", linestyle="--", label="-10 dB")

    # Marcar puntos de inicio y fin
    ax.plot(f_start, s11[idx_start], "o", color="green", label=f"Inicio: {f_start:.3f} GHz")
    ax.plot(f_end, s11[idx_end], "o", color="orange", label=f"Fin: {f_end:.3f} GHz")

    # Ancho de banda
    ax.annotate(f"BW = {bw:.3f} GHz", xy=((f_start+f_end)/2, -10), xytext=(0, 30),
                textcoords="offset points", ha="center", color="purple",
                arrowprops=dict(arrowstyle="->", color="purple"))

    ax.set_xlabel("Frecuencia [GHz]")
    ax.set_ylabel("S11 [dB]")
    ax.set_title(title)
    ax.grid(True, alpha=0.4)
    ax.legend()
    plt.tight_layout()
    plt.show()

    return {"f_start_GHz": f_start, "f_end_GHz": f_end, "bandwidth_GHz": bw}
