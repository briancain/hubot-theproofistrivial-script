# Description:
# Gives a random proof
#
# Commands:
# hubot proof me
#
# Notes:
# Will construct a random proof
#
# Author:
#   Brian Cain

start = [
    "Just biject it to a",
    "Just view the problem as a",
  ]

first = [
    "abelian",
    "associative",
    "computable",
    "Lebesgue-measurable",
    "semi-decidable",
    "simple",
    "combinatorial",
    "structure-preserving",
    "diagonalizable",
    "nonsingular",
    "orientable",
    "twice-differentiable",
    "thrice-differentiable",
    "countable",
    "prime",
    "complete",
    "continuous",
    "trivial",
    "3-connected",
    "bipartite",
    "planar",
    "finite",
    "nondeterministic",
    "alternating",
    "convex",
    "undecidable",
    "dihedral",
    "context-free",
    "rational",
    "regular",
    "Noetherian",
    "Cauchy",
    "open",
    "closed",
    "compact",
    "clopen",
    "pointless"
  ]

second = [
    ["multiset", "multisets", true],
    ["integer", "integers", false],
    ["metric space", "metric spaces", true],
    ["group", "groups", true],
    ["monoid", "monoids", true],
    ["semigroup", "semigroups", true],
    ["ring", "rings", true],
    ["field", "fields", true],
    ["module", "modules", true],
    ["Turing machine", "Turing machines", false],
    ["topological space", "topological spaces", true],
    ["automorphism", "automorphisms", false],
    ["bijection", "bijections", false],
    ["DAG", "DAGs", false],
    ["generating function", "generating functions", false],
    ["taylor series", "taylor series", false],
    ["Hilbert space", "Hilbert spaces", true],
    ["linear transformation", "linear transformations", false],
    ["manifold", "manifolds", true],
    ["hypergraph", "hypergraphs", true],
    ["pushdown automaton", "pushdown automata", false],
    ["combinatorial game", "combinatorial games", false],
    ["residue class", "residue classes", true],
    ["equivalence relation", "equivalence relations", false],
    ["logistic system", "logistic systems", true],
    ["tournament", "tournaments", false],
    ["random variable", "random variables", false],
    ["complexity class", "complexity classes", true],
    ["triangulation", "triangulations", false],
    ["unbounded-fan-in circuit", "unbounded-fan-in circuits", false],
    ["log-space reduction", "log-space reductions", false],
    ["language", "languages", true],
    ["poset", "posets", true],
    ["algebra", "algebras", true],
    ["Markov chain", "Markov chains", false],
    ["4-form", "4-forms", false],
    ["7-chain", "7-chains", false],
  ]

  module.exports = (robot) ->
    robot.respond /proof me/i, (msg) ->
      firstInd = getfirstInd()
      addn = getaddn(firstInd)
      theproof = "The proof is trivial! " + randomStart() + ((if addn then "n" else "")) + " " + first[firstInd] + " " + randomSecond()
      msg.send theproof

randomStart = ->
  ind = Math.floor(Math.random() * start.length)
  start[ind]
randomFirst = ->
  ind = Math.floor(Math.random() * first.length)
  first[ind]
randomSecond = ->
  ind = Math.floor(Math.random() * second.length)
  ind = Math.floor(Math.random() * second.length)  until second[ind][2]
  second[ind][0]
getfirstInd = ->
  firstInd = Math.floor(Math.random() * first.length)
  firstInd
getaddn = (firstInd) ->
  addn = (first[firstInd][0] is "a" or first[firstInd][0] is "e" or first[firstInd][0] is "i" or first[firstInd][0] is "o" or first[firstInd][0] is "u")
  addn
