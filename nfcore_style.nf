#! /usr/bin/env nextflow

nextflow.enable.dsl=2

/* can also add parameters before include statement */
//params.fasta = false
params.outdir = 'results'

include { align as mafft_align } from './modules/mafft/main.nf' addParams(fasta)
include { align as mafft_align2 } from './modules/mafft2/main.nf'

workflow {
  /* Input Channels */
  fasta_ch = channel.fromPath(params.fasta, checkIfExists:true)

  /* Main method */
  channel.of("01_Alignment") | combine(fasta_ch) | mafft_align | view
  channel.of("02_Alignment") | combine(fasta_ch) | mafft_align2 | view
}
