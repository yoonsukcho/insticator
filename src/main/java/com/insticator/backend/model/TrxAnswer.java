/**
 * 
 */
package com.insticator.backend.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 * @author yoons
 * trxanswers table model
 *
 */

@Entity
@Table(name="trxanswers")
@EntityListeners(AuditingEntityListener.class)

public class TrxAnswer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	private Long trxId;

	private Long choiceId;
	
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	private Date modifiedAt;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @return the trxId
	 */
	public Long getTrxId() {
		return trxId;
	}

	/**
	 * @return the choiceId
	 */
	public Long getChoiceId() {
		return choiceId;
	}

	/**
	 * @return the modifiedAt
	 */
	public Date getModifiedAt() {
		return modifiedAt;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @param trxId the trxId to set
	 */
	public void setTrxId(Long trxId) {
		this.trxId = trxId;
	}

	/**
	 * @param choiceId the choiceId to set
	 */
	public void setChoiceId(Long choiceId) {
		this.choiceId = choiceId;
	}

	/**
	 * @param modifiedAt the modifiedAt to set
	 */
	public void setModifiedAt(Date modifiedAt) {
		this.modifiedAt = modifiedAt;
	}
	
	
}
