package com.tallerwebi.dominio;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

public interface ServicioMonopoly {
    public void obtenerPosicionCasillero(HttpSession session);
}