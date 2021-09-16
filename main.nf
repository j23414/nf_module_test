#! /usr/bin/env nextflow

nextflow.enable.dsl=2

include { w1; w1 as w2 } from './modules/mod.nf'

workflow {
    w1 | view
    w2 | view
}