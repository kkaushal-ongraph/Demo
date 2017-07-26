package com.maxproductions.entities;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by agarw on 16-06-2017.
 */
@Entity
@Table(name = "usertypes", schema = "meetoreat_v001", catalog = "")
public class MeetUsertypesEntity {
    private int id;
    private String typeName;
    private Collection<MeetUserEntity> usersById;
    private MeetUsertypesEntity usertypesByParent;
    private Collection<MeetUsertypesEntity> usertypesById;

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

        MeetUsertypesEntity that = (MeetUsertypesEntity) o;

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
    public Collection<MeetUserEntity> getUsersById() {
        return usersById;
    }

    public void setUsersById(Collection<MeetUserEntity> usersById) {
        this.usersById = usersById;
    }*/

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "parent", referencedColumnName = "id")
    public MeetUsertypesEntity getUsertypesByParent() {
        return usertypesByParent;
    }

    public void setUsertypesByParent(MeetUsertypesEntity usertypesByParent) {
        this.usertypesByParent = usertypesByParent;
    }

    @OneToMany(mappedBy = "usertypesByParent", fetch = FetchType.EAGER)
    public Collection<MeetUsertypesEntity> getUsertypesById() {
        return usertypesById;
    }

    public void setUsertypesById(Collection<MeetUsertypesEntity> usertypesById) {
        this.usertypesById = usertypesById;
    }
}
