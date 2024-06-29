package com.tallerwebi.dominio;

import java.util.List;

public interface RepositorioUsuario {
    public void guardar(Usuario usuario);
    public Boolean existeUsuarioConEmail(String email);
    public void actualizarUsuario(Usuario usuario);
    public Usuario buscarUsuarioPorId(Long id);
    public boolean buscarUsuarioPorEmail(String email);
<<<<<<< HEAD
=======
    public List<Usuario> buscarTodos();
>>>>>>> 57d9088b7d73d8b2649fb9b015a9cc0f9794debe
}
