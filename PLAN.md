# Plan: rediseño de la hoja de vida web

**Fase actual:** Fase 1 · Contenido
**Siguiente paso:** en una sesión nueva, aplicar los 5 cambios de la Fase 1 en `index.html` y mostrarle el diff a Ezra.

- [x] Fase 0 · Preparación
- [ ] Fase 1 · Contenido
- [ ] Fase 2 · Diseño
- [ ] Fase 3 · Videos e imágenes de los proyectos
- [ ] Fase 4 · PDF
- [ ] Fase 5 · Publicar

Ninguna fase avanza sin el "dale" de Ezra. Una sesión = una fase.

---

## Fase 0 · Preparación

1. Carpeta del proyecto: `~/Proyectos/hoja-de-vida`. ✔
2. Clonar el repo y crear la rama `rediseno`. ✔
3. Crear `CLAUDE.md` con "Cómo trabajar conmigo", "Cómo funcionan las sesiones" y "Reglas que no se rompen". ✔
4. Crear este `PLAN.md`. ✔
5. Mostrarle a Ezra `CLAUDE.md` y `PLAN.md` → esperar su "dale". ✔

## Fase 1 · Contenido (ya aprobado en Cowork)

Aplicar exactamente estos cambios en `index.html`:

1. Encargado de Amazon FBA (Distribuidora Osher): fechas "Ene – Sep 2026" (antes decía "2025 – presente").
2. Sheets Brewery: fechas "Abr 2025 – Ago 2026".
3. Nuevo "Sobre mí" (dos párrafos):
   > Soy una persona práctica y curiosa. Cuando veo algo que se hace a mano y se repite, busco cómo automatizarlo, y muchas veces termino construyendo mi propia herramienta. Así aprendí Apps Script, SQL y ahora Python, y hoy la IA es parte de mi forma de trabajar.
   >
   > Busco un equipo donde pueda aprender de gente con experiencia, aportar orden y buenas herramientas, y seguir creciendo.
4. Sección nueva "Proyectos", entre "Sobre mí" y "Experiencia", con 3 proyectos:
   - **Sunling** · App iPhone · En pausa: "App de rutina matutina basada en el método de Hal Elrod."
   - **BHSuper.com** · Rediseño web · En curso: "Rediseño completo de una tienda online en WordPress, trabajado en un sitio de prueba antes de salir en vivo."
   - **Esta hoja de vida** · Sitio web · Claude Code: "Diseñada y publicada con Claude Code en GitHub Pages, con versión PDF."
5. Habilidades → Desarrollo: "Python (en formación) · Terminal · Git y GitHub · HTML y CSS · Claude Code".

Lo demás se queda igual: experiencia, formación, idiomas, yeshivá, referencia (con teléfono) y el título "Operaciones y Automatización · SAP y E-commerce".

Mostrar el diff → esperar el "dale".

## Fase 2 · Diseño (cambió, ver "Cambios al plan")

1. En Claude Design (lienzo de diseño en claude.ai, armado desde Claude Code), hacer **3 direcciones bien distintas**, cada una en computadora y en celular, con el contenido real de la Fase 1.
   - Todo puede cambiar: colores, fuentes, estructura.
   - Fijo en las 3: el "BH" arriba a la derecha, modo oscuro y las reglas de `CLAUDE.md` (sin foto, etc.).
   - Meta: que se vea moderno y "wow", sin perder claridad (se lee en 30 segundos).
2. Ezra elige una dirección.
3. Pasarla a `index.html`, con:
   - Proyectos en tarjetas con espacio para video (16:10).
   - Experiencia como línea de tiempo, con un punto en cada puesto.
   - Animaciones sutiles: la franja de arriba se dibuja al cargar y las secciones aparecen suave al hacer scroll. Respetar `prefers-reduced-motion`.
   - Botón "Ver proyectos" al lado de "Descargar CV en PDF".
   - Etiqueta "Disponible · Panamá" con punto verde, arriba del nombre. **Solo en la web, no en el PDF.**
   - Hoja de estilos de impresión: el PDF sale de la misma página, limpio, sin botones, videos ni etiqueta "Disponible".
   - En impresión, Proyectos va en versión corta: una línea por proyecto.
   - `<meta name="robots" content="noindex">`.
4. Abrirle la página en local para revisarla en computadora y en celular → esperar el "dale".

Referencia de contenido (no de diseño): `~/Proyectos/vista-previa-cv.html` (fuera del repo, para que nunca se publique).

## Fase 3 · Videos e imágenes de los proyectos

- Formato: video corto de 10 a 20 segundos, sin sonido, en loop, liviano (menos de 2 MB, MP4 o WebM), con imagen de portada.
- **Esta hoja de vida:** grabar un scroll automático con Playwright.
- **BHSuper.com:** antes y después con **barra deslizable interactiva en la página** (no video), sobre dos capturas:
  - Antes: sitio actual, https://bhsuper.com
  - Después: rediseño en staging, https://staging-5d1b-bhsuper.wpcomstaging.com (Ezra inicia sesión cuando se le pida).
- **Sunling:** el proyecto está en `~/Developer/savers` (`swift/SAVERS.xcodeproj`). Abrirlo en el simulador de iPhone y grabar la pantalla (`xcrun simctl io booted recordVideo`).
- Mostrarle cada video o captura antes de ponerlo → esperar el "dale".

## Fase 4 · PDF

- Generar `CV-Ezra-Tawachi.pdf` desde la página, usando el estilo de impresión (Chrome sin interfaz o Playwright).
- Revisar que quepa en una página y que se lea bien.
- Mostrárselo → esperar el "dale".

## Fase 5 · Publicar

- Hacer un resumen final de todos los cambios.
- Con el "dale", unir `rediseno` con `main` y hacer push.
- Verificar que https://ezratawachi.github.io muestre la versión nueva y que el PDF descargue bien.
- Revisar que el `noindex` esté puesto.

Con la Fase 5 termina este proyecto. Cómo mantener la hoja de vida actualizada se ve después, por separado.

---

## Decisiones tomadas

- 2026-10-20 · Carpeta del proyecto: `~/Proyectos/hoja-de-vida`.
- 2026-10-20 · La vista previa queda fuera del repo, en `~/Proyectos/vista-previa-cv.html`.
- 2026-10-20 · Fase 2 se hace en Claude Design: 3 direcciones, todo libre salvo el BH y el modo oscuro.
- 2026-10-20 · Proyectos va en el PDF en versión corta (una línea por proyecto, sin videos).
- 2026-10-20 · BHSuper: barra deslizable interactiva sobre dos capturas, no video.
- 2026-10-20 · Etiqueta "Disponible · Panamá": sí, solo en la web, no en el PDF.
- 2026-10-20 · `noindex`: sí. Google no muestra la página; solo la ve quien tenga el enlace.
- 2026-10-20 · Sunling = proyecto en `~/Developer/savers`.
- 2026-10-20 · Había una copia vieja del repo en `~/Developer/ezratawachi.github.io`. Ezra la borró. Solo se trabaja en `~/Proyectos/hoja-de-vida`.

## Cambios al plan

- 2026-10-20 · Fase 2 ya no sigue la vista previa de Cowork. Ezra quiere algo más moderno y "wow". Se diseñan 3 direcciones en Claude Design y él elige.
- 2026-10-20 · BHSuper: la barra deslizable es interactiva, no un video (en un video no se puede arrastrar).

## Pendientes de decidir

- Ninguno por ahora.

## Para después (fuera de este plan)

- Quitar la etiqueta "Disponible · Panamá" cuando Ezra consiga trabajo.
- Cómo mantener la hoja de vida actualizada.
