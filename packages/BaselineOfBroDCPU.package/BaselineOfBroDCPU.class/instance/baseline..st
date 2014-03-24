baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'BroDCPU-Core';
                package: 'BroDCPU-Tests' with: [ spec requires: #('default') ];
                package: 'VB-Regex'
                    with: [ spec requires: #('BroDCPU-Core') ].
            spec
                group: 'default' with: #('BroDCPU-Core' 'VB-Regex');
                group: 'Tests' with: #('BroDCPU-Tests');
                group: 'TravisCI' with: #('Tests') ]