#! /usr/bin/env nextflow

nextflow.enable.dsl=2

process say_hi {
    output:stdout()
    script:
    template 'say_hi.sh'
}

process say_hi2 {
    input: val(in_str)
    output:stdout()
    script:
    template 'say_hi2.sh'
}

workflow w1 {
  main:
    out_ch = say_hi | say_hi2

  emit: out_ch
}