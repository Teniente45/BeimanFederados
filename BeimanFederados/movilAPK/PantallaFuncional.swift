//
//  SolapaWebView.swift
//  Kairos24h
//
//  Created by Juan López on 2025.
//

import SwiftUI
import WebKit

struct SolapaWebView: View {
    let webView: WKWebView
    let onClose: () -> Void

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                if let logoCliente = ImagenesMovil.logoCliente {
                    logoCliente
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 280)
                }

                HStack(alignment: .top, spacing: 20) {
                    columnaIconos([
                        ("Mis Citas", "mis_citas", BuildURLMovil.verCita()),
                        ("Mis Datos", "mis_datos", BuildURLMovil.verMisDatos()),
                        ("Póliza de seguros", "poliza_de_seguros", BuildURLMovil.verProtocoloYSeguridad()),
                        ("Comunicar un parte", "comunicar_un_parte", BuildURLMovil.comunicarParte())
                    ])
                    columnaIconos([
                        ("Mis informes", "mis_informes", BuildURLMovil.verInforme()),
                        ("Mis accidentes deportivos", "mis_partes", BuildURLMovil.verParteMedico()),
                        ("Tramitar alta voluntaria", "tramitar_alta_voluntaria", BuildURLMovil.pedirAltaVoluntaria()),
                        ("Subir un documento", "subir_documento", BuildURLMovil.subirDocumento())
                    ])
                }

                if let logoDev = ImagenesMovil.logoDesarrolladora {
                    logoDev
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 75)
                }
            }
            .padding()
        }
        .background(Color.white)
        .zIndex(2)
    }

    private func columnaIconos(_ iconos: [(String, String, String)]) -> some View {
        VStack(spacing: 20) {
            ForEach(iconos, id: \.2) { item in
                botonNavegador(label: item.0, imageName: item.1, urlString: item.2)
            }
        }
    }

    private func botonNavegador(label: String, imageName: String, urlString: String) -> some View {
        Button(action: {
            if let url = URL(string: urlString) {
                webView.load(URLRequest(url: url))
                onClose()
            }
        }) {
            VStack(spacing: 8) {
                Image(imageName)
                    .resizable()
                    .frame(width: 86, height: 86)
                Text(label)
                    .font(.system(size: 17, weight: .medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 6/255, green: 82/255, blue: 161/255))
                    .frame(width: 96)
            }
            .frame(width: 100, height: 130)
        }
    }
}
