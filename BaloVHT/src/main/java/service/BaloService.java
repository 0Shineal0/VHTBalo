package service;

import model.Balo;
import dao.Balos;
import java.util.List;

public class BaloService {
    public static List<Balo> getAllBalos() {
        return Balos.getAll();
    }
}
