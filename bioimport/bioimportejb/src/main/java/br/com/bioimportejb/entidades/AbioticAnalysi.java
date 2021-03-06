package br.com.bioimportejb.entidades;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the abiotic_analysis database table.
 * 
 */
@Entity
@Table(name="biotecmar.abiotic_analysis")
public class AbioticAnalysi implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	@Column(name="ammonia_um")
	private BigDecimal ammoniaUm;

	@Column(name="doc_um")
	private BigDecimal docUm;

	@Column(name="nitrate_um")
	private BigDecimal nitrateUm;

	@Column(name="nitrite_um")
	private BigDecimal nitriteUm;

	@Column(name="organic_nitrogen_um")
	private BigDecimal organicNitrogenUm;

	@Column(name="organic_phosphorous_um")
	private BigDecimal organicPhosphorousUm;

	@Column(name="ortho_phosphate_um")
	private BigDecimal orthoPhosphateUm;

	@Column(name="salinity_s")
	private BigDecimal salinityS;

	@Column(name="silicate_um")
	private BigDecimal silicateUm;

	@Column(name="temperature_c")
	private BigDecimal temperatureC;

	//bi-directional one-to-one association to Sample
	@OneToOne
	@JoinColumn(name="id_sample", referencedColumnName="id")
	private Sample sample;

	public AbioticAnalysi() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public BigDecimal getAmmoniaUm() {
		return this.ammoniaUm;
	}

	public void setAmmoniaUm(BigDecimal ammoniaUm) {
		this.ammoniaUm = ammoniaUm;
	}

	public BigDecimal getDocUm() {
		return this.docUm;
	}

	public void setDocUm(BigDecimal docUm) {
		this.docUm = docUm;
	}

	public BigDecimal getNitrateUm() {
		return this.nitrateUm;
	}

	public void setNitrateUm(BigDecimal nitrateUm) {
		this.nitrateUm = nitrateUm;
	}

	public BigDecimal getNitriteUm() {
		return this.nitriteUm;
	}

	public void setNitriteUm(BigDecimal nitriteUm) {
		this.nitriteUm = nitriteUm;
	}

	public BigDecimal getOrganicNitrogenUm() {
		return this.organicNitrogenUm;
	}

	public void setOrganicNitrogenUm(BigDecimal organicNitrogenUm) {
		this.organicNitrogenUm = organicNitrogenUm;
	}

	public BigDecimal getOrganicPhosphorousUm() {
		return this.organicPhosphorousUm;
	}

	public void setOrganicPhosphorousUm(BigDecimal organicPhosphorousUm) {
		this.organicPhosphorousUm = organicPhosphorousUm;
	}

	public BigDecimal getOrthoPhosphateUm() {
		return this.orthoPhosphateUm;
	}

	public void setOrthoPhosphateUm(BigDecimal orthoPhosphateUm) {
		this.orthoPhosphateUm = orthoPhosphateUm;
	}

	public BigDecimal getSalinityS() {
		return this.salinityS;
	}

	public void setSalinityS(BigDecimal salinityS) {
		this.salinityS = salinityS;
	}

	public BigDecimal getSilicateUm() {
		return this.silicateUm;
	}

	public void setSilicateUm(BigDecimal silicateUm) {
		this.silicateUm = silicateUm;
	}

	public BigDecimal getTemperatureC() {
		return this.temperatureC;
	}

	public void setTemperatureC(BigDecimal temperatureC) {
		this.temperatureC = temperatureC;
	}

	public Sample getSample() {
		return this.sample;
	}

	public void setSample(Sample sample) {
		this.sample = sample;
	}

}