package formulaire;

import java.util.HashMap;
import java.util.Map;

public class PersonneFormBean {
	private String nom="";
	private String prenom="";
	private String telephone="";
	private String sexe="";
	private Map<String,String> errors = new HashMap<>();
		

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	
	public String getCheckedMasculin() {
		if ( this.getSexe().equalsIgnoreCase("feminin")) return "";
		return "checked";
	}
	
	public String getCheckedFeminin() {
		if ( this.getSexe().equalsIgnoreCase("feminin")) return "checked";
		return "";
	}

	public Map getErrors() {
		return errors;
	}
	
	public void validate() {
		if(this.getNom().isEmpty()) errors.put("nom", "  le champs nom ne doit pas être vide");
		if(this.getPrenom().isEmpty()) errors.put("prenom", "  le champs nom ne doit pas être vide");
		boolean b=true;
        try {
            Float f = Float.parseFloat(this.getTelephone());
        } catch (NumberFormatException e) {
            b = false;
        }
		if(b==false) errors.put("telephone", "  le champs telephone doit comporter uniquement des chiffres");
		
		if(!getCheckedFeminin().equalsIgnoreCase("checked") && !getCheckedMasculin().equalsIgnoreCase("checked")) errors.put("sexe", "  le sexe vaut masculin ou féminin");
		
	}
	
	public boolean isValid() {
		if (errors==null || errors.isEmpty()) return true;
		return false;
	}

	public void setErrors() {
		this.errors.clear();
	}

}
