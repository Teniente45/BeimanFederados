import SwiftUI

// MARK: - EstilosBeiman (equivalente al object Kotlin)
// Esta estructura agrupa todos los estilos reutilizables de la app, como tamaños, colores y fuentes

struct EstilosBeiman {

    // MARK: Estilo del texto debajo de cada icono
    struct TextoEstilo {
        // Fuente del texto debajo de cada icono: tamaño 14 y peso medio
        static let fuente: Font = .system(size: 14, weight: .medium)
        // Color del texto: azul corporativo #005BAC
        static let color: Color = Color(red: 0/255, green: 91/255, blue: 172/255)
    }

    // MARK: - Dimensiones de los iconos y espaciados
    struct Dimensiones {
        // Tamaño del icono (ancho/alto)
        static let iconSize: CGFloat = 86
        // Espacio entre el icono y el texto
        static let iconTextSpacing: CGFloat = 8
        // Tamaño de fuente del texto
        static let textFontSize: CGFloat = 17
        // Ancho máximo del texto debajo del icono
        static let textWidth: CGFloat = 96
        // Espacio entre columnas de iconos
        static let columnSpacing: CGFloat = 20
        // Espacio entre filas de iconos
        static let rowSpacing: CGFloat = 80
        // Padding horizontal general para vistas o secciones
        static let paddingHorizontal: CGFloat = 6
        // Padding vertical general para vistas o secciones
        static let paddingVertical: CGFloat = 1
        // Padding superior del logo principal
        static let logoPaddingTop: CGFloat = 8
        // Padding inferior del logo principal
        static let logoPaddingBottom: CGFloat = 10
        // Padding superior del navegador WebView
        static let navegadorPaddingTop: CGFloat = 20
        // Padding inferior del navegador WebView
        static let navegadorPaddingBottom: CGFloat = 2
        // Padding superior del logo de desarrolladora
        static let desarrolladoraPaddingTop: CGFloat = 10
        // Padding inferior del logo de desarrolladora
        static let desarrolladoraPaddingBottom: CGFloat = 4
    }

    // MARK: - Estilos del botón SolapaWebView
    struct BotonSolapa {
        // Tamaño del botón redondo
        static let botonSize: CGFloat = 80
        // Tamaño del icono dentro del botón
        static let iconoSize: CGFloat = 40
        // Color de fondo del botón
        static let colorFondo: Color = Color(red: 0/255, green: 91/255, blue: 172/255)
        // Color del icono (blanco)
        static let colorIcono: Color = .white
    }
}
