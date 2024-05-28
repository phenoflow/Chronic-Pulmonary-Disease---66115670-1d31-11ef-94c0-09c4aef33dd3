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
  chronic-pulmonary-disease-asthmaticu---primary:
    run: chronic-pulmonary-disease-asthmaticu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  chronic-pulmonary-disease-sequoiosis---primary:
    run: chronic-pulmonary-disease-sequoiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-asthmaticu---primary/output
  chronic-pulmonary-disease---primary:
    run: chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-sequoiosis---primary/output
  chronic-pulmonary-disease-berylliosis---primary:
    run: chronic-pulmonary-disease-berylliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-alveolitis---primary:
    run: chronic-pulmonary-disease-alveolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-berylliosis---primary/output
  mixed-chronic-pulmonary-disease---primary:
    run: mixed-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-alveolitis---primary/output
  chronic-pulmonary-disease-restricts---primary:
    run: chronic-pulmonary-disease-restricts---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: mixed-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-tracheobronchitis---primary:
    run: chronic-pulmonary-disease-tracheobronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-restricts---primary/output
  chronic-pulmonary-disease-emphysema---primary:
    run: chronic-pulmonary-disease-emphysema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-tracheobronchitis---primary/output
  chronic-pulmonary-disease-silica---primary:
    run: chronic-pulmonary-disease-silica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-emphysema---primary/output
  chronic-pulmonary-disease-worker---primary:
    run: chronic-pulmonary-disease-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-silica---primary/output
  pulmonary---primary:
    run: pulmonary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-worker---primary/output
  chronic-pulmonary-disease-bronchiectasis---primary:
    run: chronic-pulmonary-disease-bronchiectasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: pulmonary---primary/output
  bronchial-chronic-pulmonary-disease---primary:
    run: bronchial-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bronchiectasis---primary/output
  birdfancier-chronic-pulmonary-disease---primary:
    run: birdfancier-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: bronchial-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-pneumoconiosis---primary:
    run: chronic-pulmonary-disease-pneumoconiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: birdfancier-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-fibrosis---primary:
    run: chronic-pulmonary-disease-fibrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pneumoconiosis---primary/output
  acute-chronic-pulmonary-disease---primary:
    run: acute-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-fibrosis---primary/output
  inorganic-chronic-pulmonary-disease---primary:
    run: inorganic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: acute-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-suberosis---primary:
    run: chronic-pulmonary-disease-suberosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: inorganic-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-never---primary:
    run: chronic-pulmonary-disease-never---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-suberosis---primary/output
  chronic-pulmonary-disease-hypersensitivity---primary:
    run: chronic-pulmonary-disease-hypersensitivity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-never---primary/output
  other-chronic-pulmonary-disease---primary:
    run: other-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-hypersensitivity---primary/output
  chronic-pulmonary-disease-cannabinosis---primary:
    run: chronic-pulmonary-disease-cannabinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-stannosis---primary:
    run: chronic-pulmonary-disease-stannosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-cannabinosis---primary/output
  bullous-chronic-pulmonary-disease---primary:
    run: bullous-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-stannosis---primary/output
  chronic-pulmonary-disease-compensatory---primary:
    run: chronic-pulmonary-disease-compensatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: bullous-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-sleep---primary:
    run: chronic-pulmonary-disease-sleep---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-compensatory---primary/output
  chronic-pulmonary-disease-month---primary:
    run: chronic-pulmonary-disease-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-sleep---primary/output
  interstitial-chronic-pulmonary-disease---primary:
    run: interstitial-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-month---primary/output
  chronic-pulmonary-disease-unspecified---primary:
    run: chronic-pulmonary-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: interstitial-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-induced---primary:
    run: chronic-pulmonary-disease-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-unspecified---primary/output
  chemical-chronic-pulmonary-disease---primary:
    run: chemical-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-induced---primary/output
  chronic-pulmonary-disease-lung---primary:
    run: chronic-pulmonary-disease-lung---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: chemical-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-asbestosis---primary:
    run: chronic-pulmonary-disease-asbestosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-lung---primary/output
  chronic-pulmonary-disease-radiation---primary:
    run: chronic-pulmonary-disease-radiation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-asbestosis---primary/output
  obstructive-chronic-pulmonary-disease---primary:
    run: obstructive-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-radiation---primary/output
  chronic-pulmonary-disease-agent---primary:
    run: chronic-pulmonary-disease-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: obstructive-chronic-pulmonary-disease---primary/output
  severe-chronic-pulmonary-disease---primary:
    run: severe-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-agent---primary/output
  plaque-chronic-pulmonary-disease---primary:
    run: plaque-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: severe-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-night---primary:
    run: chronic-pulmonary-disease-night---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: plaque-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-bagassosis---primary:
    run: chronic-pulmonary-disease-bagassosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-night---primary/output
  chronic-pulmonary-disease-fever---primary:
    run: chronic-pulmonary-disease-fever---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bagassosis---primary/output
  chronic-pulmonary-disease-siderosis---primary:
    run: chronic-pulmonary-disease-siderosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-fever---primary/output
  chronic-pulmonary-disease-byssinosis---primary:
    run: chronic-pulmonary-disease-byssinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-siderosis---primary/output
  chronic-pulmonary-disease-respiratory---primary:
    run: chronic-pulmonary-disease-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-byssinosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-respiratory---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
