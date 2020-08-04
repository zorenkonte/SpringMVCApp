package spring.demo.mvc.model.base;


import java.io.Serializable;
import java.util.UUID;

public class BaseEntity implements Serializable {

    private UUID Id;

    public BaseEntity() {
        this.Id = UUID.randomUUID();
    }

    public UUID getId() {
        return Id;
    }

    public void setId(UUID id) {
        Id = id;
    }
}
