//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2017.04.19 at 08:45:19 PM MSK 
//


package by.it.smirnov.jd02_10.task_b.pojo_class;

import javax.xml.bind.annotation.*;
import javax.xml.datatype.XMLGregorianCalendar;
import java.util.Date;


/**
 * <p>Java class for Lim complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Lim">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Opers" type="{http://pojo_class.task_b.jd02_10.smirnov.it.by/}Opers"/>
 *       &lt;/sequence>
 *       &lt;attribute name="fromDate" use="required" type="{http://www.w3.org/2001/XMLSchema}date" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Lim", propOrder = {
    "opers"
})
public class Lim {

    @XmlElement(name = "Opers", required = true)
    protected Opers opers;
    @XmlAttribute(name = "fromDate", required = true)
    @XmlSchemaType(name = "date")
    protected String fromDate;

    /**
     * Gets the value of the opers property.
     * 
     * @return
     *     possible object is
     *     {@link Opers }
     *     
     */
    public Opers getOpers() {
        return opers;
    }

    /**
     * Sets the value of the opers property.
     * 
     * @param value
     *     allowed object is
     *     {@link Opers }
     *     
     */
    public void setOpers(Opers value) {
        this.opers = value;
    }

    /**
     * Gets the value of the fromDate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public String getFromDate() {
        return fromDate;
    }

    /**
     * Sets the value of the fromDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setFromDate(String value) {
        this.fromDate = value;
    }

    public Lim() {}

    @Override
    public String toString() {
        return "Lim{" +
                "opers=" + opers +
                ", fromDate=" + fromDate +
                '}';
    }
}
