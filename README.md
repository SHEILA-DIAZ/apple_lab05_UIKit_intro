# Laboratorio 05 – Interfaces mediante UIKit

**Curso:** Programación en Móviles Avanzado
**Alumna:** Sheila Díaz Rojas

Aplicaciones iOS desarrolladas con **UIKit + Storyboard + Swift** (sin SwiftUI, Combine ni librerías externas).

## Estructura del repositorio

| Carpeta / Proyecto | Contenido de la guía |
|---|---|
| `apple_lab05_UIKit_intro.xcodeproj` (raíz) | Crear un proyecto en Xcode mediante UIKit, Label "Diseño y Desarrollo de Software", Label con el nombre de la alumna y restricciones (Auto Layout) |
| `Semana05_Desarrollo/` | Segundo proyecto: manejo de controles básicos – Cálculo del IMC |
| `CalculadoraPrestamos/` | Actividad: Calculadora de Préstamos |

Cada proyecto es independiente y se abre con su propio archivo `.xcodeproj`.

## Proyecto 1 – apple_lab05_UIKit_intro

- **Product Name:** apple_lab05_UIKit_intro · **Team:** None · **Interface:** Storyboard · **Language:** Swift
- **Bundle Identifier:** `edu.pe.tecsup.pma.apple-lab05-UIKit-intro`
- Label **"Diseño y Desarrollo de Software"**: color AccentColor, alineación centrada, Lines = 2, con las restricciones *Center Horizontally in Safe Area* y *Center Vertically in Safe Area*.
- Label **"Sheila Díaz Rojas"** (actividad): color de fondo amarillo y fuente más grande (Bold 24) que la etiqueta previa (17), con las restricciones *Vertical Spacing* hacia el título, *Center Horizontally in Safe Area* y *Width*.

### ¿Qué es y para qué sirve el JUMP BAR?

El **Jump Bar** es la barra de navegación que aparece en la parte superior del área de edición de Xcode. Muestra la **ruta jerárquica** del elemento que se está editando, por ejemplo:

`apple_lab05_UIKit_intro › apple_lab05_UIKit_intro › Main › View Controller Scene › View Controller › View › Diseño y Desarrollo de Software`

Sirve para:

- **Ubicar** en qué proyecto, grupo, archivo y objeto se encuentra el elemento seleccionado (por ejemplo, que el Label está dentro de la *View* del *View Controller*).
- **Navegar rápidamente**: cada segmento es un menú desplegable que permite saltar a otros archivos del mismo grupo, a otros objetos del Storyboard o, en un archivo Swift, a sus clases, métodos y propiedades.
- **Seleccionar objetos** del Storyboard que son difíciles de seleccionar con el mouse (por ejemplo, vistas superpuestas).
- Moverse por el historial de archivos con las flechas **atrás / adelante** y abrir los **elementos relacionados** (Related Items).

## Proyecto 2 – Semana05_Desarrollo (IMC)

Componentes en `Main.storyboard`: UILabel "Peso (Kg)", UITextField de peso, UILabel "Altura(m)", UITextField de altura, UIButton "Mostrar" y UILabel de resultado.

- Outlets: `weightTextField`, `heightTextField`, `resultLabel`.
- Acción: `CalcularResultado(_:)` con el código de la guía.
- Fórmula: `IMC = Peso (kg) / Altura (m)²`.
- Ejemplo de la guía: Peso 70, Altura 1.70 → `IMC: 24.22 - Peso normal`.

## Proyecto 3 – CalculadoraPrestamos (Actividad)

Calcula la **cuota mensual** y el **monto total a pagar** de un préstamo a partir de:

1. **Capital inicial** (monto del préstamo).
2. **Tasa de interés anual** (en %, por ejemplo `12` para 12 %).
3. **Plazo del préstamo** (en años).

Fórmula de amortización:

```
M = P × r(1 + r)^n / ((1 + r)^n − 1)
```

- **M**: cuota mensual · **P**: capital · **r**: tasa anual / 12 · **n**: años × 12
- **Monto total a pagar** = M × n

Ejemplo de comprobación: Capital 10000, Tasa 12, Plazo 1 → Cuota mensual **888.49**, Monto total **10661.85**.

## Evidencias a realizar en la Mac

Los proyectos fueron preparados en Windows, por lo que la ejecución y las capturas deben hacerse en Xcode:

### Proyecto 1 – apple_lab05_UIKit_intro
- [ ] Abrir `apple_lab05_UIKit_intro.xcodeproj` y compilar (⌘B). Si aparecen avisos de *Misplaced Views*, usar **Update Frames**.
- [ ] Captura del **Attributes Inspector** con el Label seleccionado.
- [ ] Captura del **Jump Bar** con el Label seleccionado.
- [ ] Seleccionar el emulador **iPhone 16** y ejecutar (Play o *Product → Run*).
- [ ] **Captura del resultado final** con el título y el Label "Sheila Díaz Rojas" (entregable de la actividad).
- [ ] Activar **Line numbers** en *Xcode → Settings → Text Editing* y modificar un **Theme**; tomar captura.
- [ ] Ejecutar y **rotar la pantalla** del simulador; captura en vertical y en horizontal mostrando que los elementos mantienen su posición.

### Proyecto 2 – Semana05_Desarrollo
- [ ] Abrir `Semana05_Desarrollo/Semana05_Desarrollo.xcodeproj` y ejecutar en el iPhone 16.
- [ ] Captura de la vista con *Editor Pane On Right* mostrando `Main` y `ViewController` con los outlets conectados.
- [ ] Captura del resultado con Peso `70` y Altura `1.70` → `IMC: 24.22 - Peso normal`.

### Proyecto 3 – CalculadoraPrestamos
- [ ] Abrir `CalculadoraPrestamos/CalculadoraPrestamos.xcodeproj` y ejecutar en el iPhone 16.
- [ ] Captura del resultado con Capital `10000`, Tasa `12`, Plazo `1` → `888.49` y `10661.85`.
