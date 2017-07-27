package com.ongraph.entities;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by agarw on 16-06-2017.
 */
@Entity
@Table(name = "usertypes", schema = "meetoreat_v001", catalog = "")
public class UserTypesEntity {
    private int id;
    private String typeName;
    private Collection<UserEntity> usersById;
    private UserTypesEntity usertypesByParent;
    private Collection<UserTypesEntity> usertypesById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "typeName", nullable = false, length = 50)
    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserTypesEntity that = (UserTypesEntity) o;

        if (id != that.id) return false;
        if (typeName != null ? !typeName.equals(that.typeName) : that.typeName != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (typeName != null ? typeName.hashCode() : 0);
        return result;
    }

    /*@OneToMany(mappedBy = "usertypesByAccessType", fetch = FetchType.EAGER)
    public Collection<UserEntity> getUsersById() {
        return usersById;
    }

    public void setUsersById(Collection<UserEntity> usersById) {
        this.usersById = usersById;
    }*/

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "parent", referencedColumnName = "id")
    public UserTypesEntity getUsertypesByParent() {
        return usertypesByParent;
    }

    public void setUsertypesByParent(UserTypesEntity usertypesByParent) {
        this.usertypesByParent = usertypesByParent;
    }

    @OneToMany(mappedBy = "usertypesByParent", fetch = FetchType.EAGER)
    public Collection<UserTypesEntity> getUsertypesById() {
        return usertypesById;
    }

    public void setUsertypesById(Collection<UserTypesEntity> usertypesById) {
        this.usertypesById = usertypesById;
    }
}
