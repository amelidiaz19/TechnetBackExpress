import TipoComprobante from "../../models/correlative/TipoComprobante.js";
import TipoCondicion from "../../models/global/TipoCondicion.js";
import TipoMoneda from "../../models/global/TipoMoneda.js";
import TipoPago from "../../models/global/TipoPago.js";

class TipadoController {
  async GetTipadoDocumentos(req, res) {
    const tipocomprobantes = await TipoComprobante.findAll();
    const tipocondiciones = await TipoCondicion.findAll();
    const tipopagos = await TipoPago.findAll();
    const tipomonedas = await TipoMoneda.findAll();
    const tipado = {
      tipocomprobantes,
      tipocondiciones,
      tipopagos,
      tipomonedas,
    };

    return res.status(200).json(tipado);
  }
}

export default new TipadoController();

/**
 * 
 *     public TipadoDocumentos get() {
        List<TipoComprobante> tipoComprobante = tipoComprobanteRepository.findAll();
        List<TipoCondicion> tipoCondicion = tipoCondicionRepository.findAll();
        List<TipoPago> tipoPago = tipoPagoRepository.findAll();
        List<TipoMoneda> tipoMoneda = tipoMonedaRepository.findAll();

        TipadoDocumentos nuevo = new TipadoDocumentos(tipoComprobante.stream().map(this::mapToTipoComprobanteResponse).toList(),tipoCondicion,tipoPago,tipoMoneda);
        return nuevo;
    }
    private TipoComprobanteResponse mapToTipoComprobanteResponse(TipoComprobante tipoComprobante) {
        return new TipoComprobanteResponse(tipoComprobante.getId(), tipoComprobante.getPrefijo(), tipoComprobante.getDescripcion());
    }
 */
