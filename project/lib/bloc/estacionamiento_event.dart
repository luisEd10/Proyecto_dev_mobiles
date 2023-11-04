part of 'estacionamiento_bloc.dart';

@immutable
sealed class EstacionamientoEvent {} //Clase que tendrá la unidad del objeto que tengas sus características que serán

/* •	id del espacio (identificador único del espacio de estacionamiento)
•	estado (Ocupado, Reservado, Libre, No disponible)
•	tipo (Discapacitados, Pequeño, Irregular)
•	salida más cercana (referencia al identificador de la salida más cercana)
•	distancia en eje X (distancia en metros hasta la salida vertical más cercana)
•	distancia en eje Y (distancia en metros desde la parte frontal del estacionamiento hasta la fila donde se encuentra) */

// Eventos que afectaran al widget del Mapa segun la interaccion del usuario con los filtros del mapa

class GetFreeParking
    extends EstacionamientoEvent {} // Evento que devolera los lugares de estacionamiento con el estado de Libre

class GetNotAvailableParking
    extends EstacionamientoEvent {} // Evento que devolvera los lugares de estacionmiento con el estado de No Disponible

class GetReservedParking
    extends EstacionamientoEvent {} // Evento que devolvera los lugares de estacionamiento con estado de Reservado

class GetNearestExit
    extends EstacionamientoEvent {} // Evento que devolvera el id de un documento de la coleccion de salidas que cumpla con ser la mas cercana

class GetOccupiedParking
    extends EstacionamientoEvent {} // Evento que devolvera los lugares de estacionamiento con el estado de ocupado

class GetHandicapParking
    extends EstacionamientoEvent {} // Evento que devuelve los documentos de la coleccion que son para discapacitados

class GetSmallParking
    extends EstacionamientoEvent {} // Evento que devuelve los espacios de estacionamiento que son del tipo peque

class GetIrregularParking
    extends EstacionamientoEvent {} // Evento que devuelve los espacios de estacionamiento que son del tipo irregular 


