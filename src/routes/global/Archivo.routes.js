import { Router } from 'express';
import ArchivoController from '../../Controller/inventory/ArchivoController.js';

const ArchivoRoutes = new Router();

ArchivoRoutes.get('/', ArchivoController.store);
ArchivoRoutes.post('/', ArchivoController.store);
ArchivoRoutes.put('/', ArchivoController.store);
ArchivoRoutes.delete('/', ArchivoController.store);
ArchivoRoutes.get('/publicitaria', ArchivoController.getImagenesPublicitarias);

export default ArchivoRoutes;
