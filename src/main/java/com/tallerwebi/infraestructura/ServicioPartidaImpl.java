package com.tallerwebi.infraestructura;

import com.tallerwebi.dominio.*;
import com.tallerwebi.dominio.excepcion.ExcesoDeJugadoresException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service("servicioPartida")
@Transactional
public class ServicioPartidaImpl implements ServicioPartida {

    private RepositorioPartida  repositorioPartida;
    private RepositorioPartidaUsuario repositorioPartidaUsuario;

    @Autowired
    public ServicioPartidaImpl(RepositorioPartida repositorioPartida, RepositorioPartidaUsuario repositorioPartidaUsuario) {
        this.repositorioPartida = repositorioPartida;
        this.repositorioPartidaUsuario = repositorioPartidaUsuario;
    }


    @Override
    public void crearUnaPartidaNueva(Partida partida) {
        this.repositorioPartida.crearPartida(partida);
    }

    @Override
    public List<Partida> obtenerTodasLasPartidas() {
        return this.repositorioPartida.obtenerPartidas();
    }

    @Override
    public Partida obtenerPartidaPorPartidaId(Long partidaId) {
        return this.repositorioPartida.obtenerPartidaPorId(partidaId);
    }

    @Override
    public void unirseAPartida(Long partidaId, Usuario usuario) throws ExcesoDeJugadoresException {
        /*Verifico la cantidad de jugadores en la partida con su limite*/
        Partida partidaBuscada = this.repositorioPartida.obtenerPartidaPorId(partidaId);
        Integer cantidadUsuariosEnLaPartida = this.repositorioPartidaUsuario.obtenerUsuariosEnUnaPartida(partidaId).size();

        if(cantidadUsuariosEnLaPartida >= partidaBuscada.getNumeroJugadores())
            throw new ExcesoDeJugadoresException();

        /*Evaluo el color que le pondremos al auto*/

        List<Color> coloresUsadosPorUsuarios = this.repositorioPartidaUsuario.obtenerColoresJugadoresUsuados(partidaId);
        Color[] coloresDisponibles = Color.values();

        Color colorSeleccionado = null;
        for(Color c: coloresDisponibles){
            if(!coloresUsadosPorUsuarios.contains(c)){
                colorSeleccionado = c;
                break;
            }
        }

        PartidaUsuario nuevoUsuarioEnLaPartida = new PartidaUsuario(null,partidaBuscada,usuario,1,1500.0,colorSeleccionado,null);
        this.repositorioPartidaUsuario.crearPartidaUsuario(nuevoUsuarioEnLaPartida);
    }

    @Override
    public List<Usuario> verUsuariosEnlaPartidaEspera(Long partidaId){
        List<Usuario> usuariosEnLaPartida = this.repositorioPartidaUsuario.obtenerUsuariosEnUnaPartida(partidaId);
        return  usuariosEnLaPartida;
    }


    @Override
    public Usuario obtenerCreadoUsuarioDeUnaPartida(Long partidaId){
        Usuario usuarioCreador= this.repositorioPartida.obtenerPartidaPorId(partidaId).getCreador();
        return usuarioCreador;
    }

    @Override
    public void salirDeLaPartida(Long partidaId, Long usuarioId) {
        this.repositorioPartidaUsuario.eliminarPartidaUsuarioPorPartidaIdYUsuarioId(partidaId,usuarioId);
    }


}
