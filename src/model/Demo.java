package model;

public class Demo {
    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Demo demo = (Demo) o;

        if (id != null ? !id.equals(demo.id) : demo.id != null) return false;
        if (name != null ? !name.equals(demo.name) : demo.name != null) return false;

        return true;
    }

    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}
