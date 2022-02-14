package LeanMa.Hospital.POJOS;

public class Patient {
	private int id;
	private String nik, nama, umur, gender, penyakit;
	
	public Patient() { }

	public int getId() { return id; }
	public void setId(int id) { this.id = id; }

	public String getNik() { return nik; }
	public void setNik(String nik) { this.nik = nik; }

	public String getNama() { return nama; }
	public void setNama(String nama) { this.nama = nama; }

	public String getUmur() { return umur; }
	public void setUmur(String umur) { this.umur = umur; }

	public String getGender() { return gender; }
	public void setGender(String gender) { this.gender = gender; }

	public String getPenyakit() { return penyakit; }
	public void setPenyakit(String penyakit) { this.penyakit = penyakit; }
}
