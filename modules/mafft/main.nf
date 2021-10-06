#! /usr/bin/env nextflow

nextflow.enable.dsl=2

params.fasta = false
params.mafft_app = 'mafft'
// should I be using env.mafft_app?

process align {
  publishDir "$params.outdir/$outdir", mode: 'copy'

  input: tuple val(outdir), path(fasta)
  output: path("${fasta.simpleName}_aln.fasta")
  script:
  """
  #! /usr/bin/env bash
  ${params.mafft_app} --auto --reorder ${fasta} > ${fasta.simpleName}_aln.fasta
  """
}
