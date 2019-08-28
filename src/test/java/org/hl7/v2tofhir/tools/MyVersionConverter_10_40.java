package org.hl7.v2tofhir.tools;

import java.util.ArrayList;
import java.util.List;

import org.hl7.fhir.convertors.NullVersionConverterAdvisor40;
import org.hl7.fhir.convertors.VersionConvertor_10_40;
import org.hl7.fhir.r4.model.ConceptMap;
import org.hl7.fhir.r4.model.ConceptMap.ConceptMapGroupComponent;
import org.hl7.fhir.r4.model.ConceptMap.SourceElementComponent;
import org.hl7.fhir.exceptions.FHIRException;
import org.hl7.fhir.instance.model.CodeableConcept;

/** 
 * Fixes a problem with 10_30 version converter in which 
 * a null pointer reference occurs trying to convert concept maps
 * 
 * @author Keith W. Boone
 *
 */
public class MyVersionConverter_10_40 extends VersionConvertor_10_40 {

    public MyVersionConverter_10_40() {
        super(new NullVersionConverterAdvisor40());
    }

    public org.hl7.fhir.r4.model.ConceptMap convertConceptMap(org.hl7.fhir.instance.model.ConceptMap src)
            throws FHIRException {
        if (src == null || src.isEmpty())
            return null;
        org.hl7.fhir.r4.model.ConceptMap tgt = new org.hl7.fhir.r4.model.ConceptMap();
        copyDomainResource(src, tgt);
        tgt.setUrl(src.getUrl());
        tgt.setIdentifier(convertIdentifier(src.getIdentifier()));
        tgt.setVersion(src.getVersion());
        tgt.setName(src.getName());
        tgt.setStatus(convertConformanceResourceStatus(src.getStatus()));
        if (src.hasExperimental())
            tgt.setExperimental(src.getExperimental());
        tgt.setPublisher(src.getPublisher());
        for (org.hl7.fhir.instance.model.ConceptMap.ConceptMapContactComponent t : src.getContact())
            tgt.addContact(convertConceptMapContactComponent(t));
        if (src.hasDate())
            tgt.setDate(src.getDate());
        tgt.setDescription(src.getDescription());
        for (org.hl7.fhir.instance.model.CodeableConcept t : src.getUseContext())
            if (isJurisdiction(t))
                tgt.addJurisdiction(convertCodeableConcept(t));
            else
                tgt.addUseContext(convertCodeableConceptToUsageContext(t));
        tgt.setPurpose(src.getRequirements());
        tgt.setCopyright(src.getCopyright());
        tgt.setSource(convertType(src.getSource()));
        tgt.setTarget(convertType(src.getTarget()));
        for (org.hl7.fhir.instance.model.ConceptMap.SourceElementComponent t : src.getElement()) {
            List<MySourceElementComponentWrapper > ws = myConvertSourceElementComponent(t);
            for (MySourceElementComponentWrapper  w : ws)
                getGroup(tgt, w.source, w.target).addElement(w.comp);
        }
        return tgt;
    }

    boolean isJurisdiction(CodeableConcept t) {
        return t.hasCoding()
                && ("http://unstats.un.org/unsd/methods/m49/m49.htm".equals(t.getCoding().get(0).getSystem())
                        || "urn:iso:std:iso:3166".equals(t.getCoding().get(0).getSystem())
                        || "https://www.usps.com/".equals(t.getCoding().get(0).getSystem()));
    }

    class MySourceElementComponentWrapper {
        public MySourceElementComponentWrapper (SourceElementComponent comp, String source, String target) {
            super();
            this.source = source;
            this.target = target;
            this.comp = comp;
        }

        private String source;
        private String target;
        private org.hl7.fhir.r4.model.ConceptMap.SourceElementComponent comp;

    }

    public List<MySourceElementComponentWrapper> myConvertSourceElementComponent(
            org.hl7.fhir.instance.model.ConceptMap.SourceElementComponent src) throws FHIRException {
        List<MySourceElementComponentWrapper > res = new ArrayList<MySourceElementComponentWrapper >();
        if (src == null || src.isEmpty())
            return res;
        for (org.hl7.fhir.instance.model.ConceptMap.TargetElementComponent t : src.getTarget()) {
            org.hl7.fhir.r4.model.ConceptMap.SourceElementComponent tgt = new org.hl7.fhir.r4.model.ConceptMap.SourceElementComponent();
            copyElement(src, tgt);
            tgt.setCode(src.getCode());
            tgt.addTarget(convertTargetElementComponent(t));
            res.add(new MySourceElementComponentWrapper (tgt, src.getCodeSystem(), t.getCodeSystem()));
        }
        return res;
    }

    public org.hl7.fhir.instance.model.ConceptMap.SourceElementComponent myConvertSourceElementComponent(
            org.hl7.fhir.r4.model.ConceptMap.SourceElementComponent src,
            org.hl7.fhir.r4.model.ConceptMap.ConceptMapGroupComponent g) throws FHIRException {
        if (src == null || src.isEmpty())
            return null;
        org.hl7.fhir.instance.model.ConceptMap.SourceElementComponent tgt = new org.hl7.fhir.instance.model.ConceptMap.SourceElementComponent();
        copyElement(src, tgt);
        tgt.setCodeSystem(g.getSource());
        tgt.setCode(src.getCode());
        for (org.hl7.fhir.r4.model.ConceptMap.TargetElementComponent t : src.getTarget())
            tgt.addTarget(convertTargetElementComponent(t, g));
        return tgt;
    }
    
    private ConceptMapGroupComponent getGroup(ConceptMap map, String srcs, String tgts) {
        for (ConceptMapGroupComponent grp : map.getGroup()) {
            String src = grp.getSource();
            String tgt = grp.getTarget();
            if (src != null && src.equals(srcs) && tgt != null && tgt.equals(tgts))
                return grp;
        }
        ConceptMapGroupComponent grp = map.addGroup();
        grp.setSource(srcs);
        grp.setTarget(tgts);
        return grp;
      }
}