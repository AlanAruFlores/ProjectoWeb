const stompClient = new StompJs.Client({
    brokerURL: 'ws://localhost:8080/spring/wspartida'
});

stompClient.debug = function(str) {
    console.log(str)
};

stompClient.onConnect = (frame) => {
    console.log('Connected: ' + frame);
    console.log("ID: "+frame.headers['user-name']);

    //Estado de escucha
    stompClient.subscribe('/topic/notificacionPartida', (m) => {
        console.log(JSON.parse(m.body).message);
        console.log(m);
    });
};

stompClient.onWebSocketError = (error) => {
    console.error('Error with websocket', error);
};

stompClient.onStompError = (frame) => {
    console.error('Broker reported error: ' + frame.headers['message']);
    console.error('Additional details: ' + frame.body);
};
stompClient.activate();



function notificarALosJugadoresDeNuevaPartida(message){
    stompClient.publish({
        destination: "/app/partidaNueva",
        body: JSON.stringify({
            idEmisor: 0,
            message: message
        })
    });
}

/*Funcion que capta eventos en Javascript*/
const d = document;
d.addEventListener("DOMContentLoaded", ()=>{
    d.addEventListener("click", (e)=>{
        /*Cuando presione en partida boton*/
        if(e.target.matches("#botonCrearPartida")){
            notificarALosJugadoresDeNuevaPartida("Partida Nueva!!")
        }
    })
});



