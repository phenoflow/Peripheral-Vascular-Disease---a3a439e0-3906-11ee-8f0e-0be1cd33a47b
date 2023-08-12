cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  peripheral-vascular-disease-thrombosis---primary:
    run: peripheral-vascular-disease-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  peripheral-vascular-disease-varicose---primary:
    run: peripheral-vascular-disease-varicose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-thrombosis---primary/output
  peripheral-vascular-disease-pseudoaneurysm---primary:
    run: peripheral-vascular-disease-pseudoaneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-varicose---primary/output
  peripheral-vascular-disease-thombophlebitis---primary:
    run: peripheral-vascular-disease-thombophlebitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-pseudoaneurysm---primary/output
  peripheral-vascular-disease---primary:
    run: peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-thombophlebitis---primary/output
  peripheral-vascular-disease-claudication---primary:
    run: peripheral-vascular-disease-claudication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-aneurysm---primary:
    run: peripheral-vascular-disease-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-claudication---primary/output
  peripheral-vascular-disease-gangrene---primary:
    run: peripheral-vascular-disease-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-aneurysm---primary/output
  peripheral-vascular-disease-vessel---primary:
    run: peripheral-vascular-disease-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-gangrene---primary/output
  coronary-peripheral-vascular-disease---primary:
    run: coronary-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-vessel---primary/output
  peripheral-vascular-disease-anastom---primary:
    run: peripheral-vascular-disease-anastom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: coronary-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-bifurc---primary:
    run: peripheral-vascular-disease-bifurc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-anastom---primary/output
  thoracoabdominal-peripheral-vascular-disease---primary:
    run: thoracoabdominal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-bifurc---primary/output
  peripheral-vascular-disease-emerg---primary:
    run: peripheral-vascular-disease-emerg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: thoracoabdominal-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-segment---primary:
    run: peripheral-vascular-disease-segment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-emerg---primary/output
  peripheral-vascular-disease-unspecified---primary:
    run: peripheral-vascular-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-segment---primary/output
  peripheral-vascular-disease-prosth---primary:
    run: peripheral-vascular-disease-prosth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-unspecified---primary/output
  peripheral-vascular-disease-embolectomy---primary:
    run: peripheral-vascular-disease-embolectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-prosth---primary/output
  peripheral-vascular-disease-translum---primary:
    run: peripheral-vascular-disease-translum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-embolectomy---primary/output
  peripheral-vascular-disease-subclavian---primary:
    run: peripheral-vascular-disease-subclavian---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-translum---primary/output
  brachial-peripheral-vascular-disease---primary:
    run: brachial-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-subclavian---primary/output
  vertebral-peripheral-vascular-disease---primary:
    run: vertebral-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: brachial-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-coeliac---primary:
    run: peripheral-vascular-disease-coeliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: vertebral-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-endarterectomy---primary:
    run: peripheral-vascular-disease-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-coeliac---primary/output
  peripheral-vascular-disease-infusion---primary:
    run: peripheral-vascular-disease-infusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-endarterectomy---primary/output
  peripheral-vascular-disease-aortouniiliac---primary:
    run: peripheral-vascular-disease-aortouniiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-infusion---primary/output
  superficial-peripheral-vascular-disease---primary:
    run: superficial-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-aortouniiliac---primary/output
  peripheral-vascular-disease-replace---primary:
    run: peripheral-vascular-disease-replace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: superficial-peripheral-vascular-disease---primary/output
  popliteal-peripheral-vascular-disease---primary:
    run: popliteal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-replace---primary/output
  common-peripheral-vascular-disease---primary:
    run: common-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: popliteal-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-bypass---primary:
    run: peripheral-vascular-disease-bypass---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: common-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-peron---primary:
    run: peripheral-vascular-disease-peron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-bypass---primary/output
  subfascial-peripheral-vascular-disease---primary:
    run: subfascial-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-peron---primary/output
  peripheral-vascular-disease-ligation---primary:
    run: peripheral-vascular-disease-ligation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: subfascial-peripheral-vascular-disease---primary/output
  recurrent-peripheral-vascular-disease---primary:
    run: recurrent-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-ligation---primary/output
  peripheral-vascular-disease-perforating---primary:
    run: peripheral-vascular-disease-perforating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: recurrent-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-injection---primary:
    run: peripheral-vascular-disease-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-perforating---primary/output
  peripheral-vascular-disease-substance---primary:
    run: peripheral-vascular-disease-substance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-injection---primary/output
  peripheral-vascular-disease-guided---primary:
    run: peripheral-vascular-disease-guided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-substance---primary/output
  peripheral-vascular-disease-operation---primary:
    run: peripheral-vascular-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-guided---primary/output
  peripheral-vascular-disease-stripping---primary:
    run: peripheral-vascular-disease-stripping---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-operation---primary/output
  peripheral-vascular-disease-excision---primary:
    run: peripheral-vascular-disease-excision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-stripping---primary/output
  peripheral-vascular-disease-radiofrequency---primary:
    run: peripheral-vascular-disease-radiofrequency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-excision---primary/output
  peripheral-vascular-disease-laser---primary:
    run: peripheral-vascular-disease-laser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-radiofrequency---primary/output
  peripheral-vascular-disease-combined---primary:
    run: peripheral-vascular-disease-combined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-laser---primary/output
  peripheral-vascular-disease-clostridium---primary:
    run: peripheral-vascular-disease-clostridium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-combined---primary/output
  pulmonary-peripheral-vascular-disease---primary:
    run: pulmonary-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-clostridium---primary/output
  peripheral-vascular-disease-atherosclerosis---primary:
    run: peripheral-vascular-disease-atherosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: pulmonary-peripheral-vascular-disease---primary/output
  infrarenal-peripheral-vascular-disease---primary:
    run: infrarenal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-atherosclerosis---primary/output
  peripheral-vascular-disease-which---primary:
    run: peripheral-vascular-disease-which---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: infrarenal-peripheral-vascular-disease---primary/output
  radial-peripheral-vascular-disease---primary:
    run: radial-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-which---primary/output
  peripheral-vascular-disease-ulnar---primary:
    run: peripheral-vascular-disease-ulnar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: radial-peripheral-vascular-disease---primary/output
  splenic-peripheral-vascular-disease---primary:
    run: splenic-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-ulnar---primary/output
  other-peripheral-vascular-disease---primary:
    run: other-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: splenic-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-raynaud---primary:
    run: peripheral-vascular-disease-raynaud---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: other-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-obliteran---primary:
    run: peripheral-vascular-disease-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-raynaud---primary/output
  peripheral-vascular-disease-buerger's---primary:
    run: peripheral-vascular-disease-buerger's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-obliteran---primary/output
  arterial-peripheral-vascular-disease---primary:
    run: arterial-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-buerger's---primary/output
  peripheral-vascular-disease-embolism---primary:
    run: peripheral-vascular-disease-embolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: arterial-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-anterior---primary:
    run: peripheral-vascular-disease-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-embolism---primary/output
  peripheral-vascular-disease-pedis---primary:
    run: peripheral-vascular-disease-pedis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-anterior---primary/output
  peripheral-vascular-disease-posterior---primary:
    run: peripheral-vascular-disease-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-pedis---primary/output
  hepatic-peripheral-vascular-disease---primary:
    run: hepatic-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-posterior---primary/output
  peripheral-vascular-disease-related---primary:
    run: peripheral-vascular-disease-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: hepatic-peripheral-vascular-disease---primary/output
  portal-peripheral-vascular-disease---primary:
    run: portal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-related---primary/output
  arteriovenous-peripheral-vascular-disease---primary:
    run: arteriovenous-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: portal-peripheral-vascular-disease---primary/output
  axillary-peripheral-vascular-disease---primary:
    run: axillary-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: arteriovenous-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-ulcer---primary:
    run: peripheral-vascular-disease-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: axillary-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-eczema---primary:
    run: peripheral-vascular-disease-eczema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-ulcer---primary/output
  peripheral-vascular-disease-mention---primary:
    run: peripheral-vascular-disease-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-eczema---primary/output
  peripheral-vascular-disease-distribution---primary:
    run: peripheral-vascular-disease-distribution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-mention---primary/output
  aneurysmal-peripheral-vascular-disease---primary:
    run: aneurysmal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-distribution---primary/output
  inguinal-peripheral-vascular-disease---primary:
    run: inguinal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: aneurysmal-peripheral-vascular-disease---primary/output
  unilateral-peripheral-vascular-disease---primary:
    run: unilateral-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: inguinal-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-hernia---primary:
    run: peripheral-vascular-disease-hernia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: unilateral-peripheral-vascular-disease---primary/output
  ventral-peripheral-vascular-disease---primary:
    run: ventral-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-hernia---primary/output
  peripheral-vascular-disease-cavity---primary:
    run: peripheral-vascular-disease-cavity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ventral-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-pregnancy---primary:
    run: peripheral-vascular-disease-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-cavity---primary/output
  obstetric-peripheral-vascular-disease---primary:
    run: obstetric-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-pregnancy---primary/output
  peripheral-vascular-disease-complication---primary:
    run: peripheral-vascular-disease-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: obstetric-peripheral-vascular-disease---primary/output
  puerperal-peripheral-vascular-disease---primary:
    run: puerperal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-complication---primary/output
  antenatal-peripheral-vascular-disease---primary:
    run: antenatal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: puerperal-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-delivered---primary:
    run: peripheral-vascular-disease-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antenatal-peripheral-vascular-disease---primary/output
  postnatal-peripheral-vascular-disease---primary:
    run: postnatal-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-delivered---primary/output
  peripheral-vascular-disease-repair---primary:
    run: peripheral-vascular-disease-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: postnatal-peripheral-vascular-disease---primary/output
  peripheral-vascular-disease-fluid---primary:
    run: peripheral-vascular-disease-fluid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-repair---primary/output
  peripheral-vascular-disease-anomaly---primary:
    run: peripheral-vascular-disease-anomaly---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-fluid---primary/output
  peripheral-vascular-disease-system---primary:
    run: peripheral-vascular-disease-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-anomaly---primary/output
  percutaneous-peripheral-vascular-disease---primary:
    run: percutaneous-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-system---primary/output
  diabetic-peripheral-vascular-disease---primary:
    run: diabetic-peripheral-vascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: percutaneous-peripheral-vascular-disease---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: diabetic-peripheral-vascular-disease---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
