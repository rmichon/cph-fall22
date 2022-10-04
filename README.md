# Real-Time Signal Processing in Faust Towards Applications for Hearing Impaired Workshop

## Description

**Dates:** October 3-7, 2022

**Instructors:** Romain Michon and Stefania Serafin

This five days workshop provides an introduction to real-time audio Digital Signal Processing (DSP) in the Faust programming language (<https://faust.grame.fr>) with a strong focus on techniques used in the context of hearing aids, cochlear implants, sound localization, etc. Students are walked through the semantic of Faust. A wide range of algorithms are covered and implemented (i.e., oscillators, filters, basic audio effects, etc.). Various tutorials demonstrating how Faust programs can be exported/integrated to a various platforms (i.e., audio plug-ins, smartphones, embedded systems, etc.) are given too. The last two days of the workshop are dedicated to final projects which can focus on a wide range of topics (e.g., hearing aids, cochlear implants simulation, etc.). The workshop culminates in a final presentation which will take place at the end of the morning of the last day of the workshop.

## Schedule

### Monday: Blips and Bloops

* Introduction to the Faust programming language
* Working with the Faust toolchain
* Simple sound generators (i.e., oscillators, AM, FM, etc.)
* Simple audio processors/effects (i.e., panning, tremolo, ring modulation, etc.)

### Tuesday: Filtering

* Basic FIR filters (i.e., one zero, comb, peak equalizers, etc.)
* Basic IIR filters (i.e., one pole, butter-worth, feedback comb, biquads, resonant filters, etc.)

### Wednesday: Making Actual Things

* Generating ready-to-use applications, plug-ins, etc. with Faust.
* Integrating Faust objects to existing/broader projects (e.g., JUCE plugins, smartphone apps, etc.).
* Brainstorm on final projects.
* Overview of signal processing techniques for hearing impaired applications.
* Advanced Faust coding techniques.

### Thursday: Working on Projects

* Final tour of projects
* Working on projects

### Friday: Working on Projects + Final Presentations

* Working on projects
* Final presentations

## Final Project Ideas

### Cochlear Implant Simulator

Build a cochlear implant simulator that captures in realtime a sound signal and filters through a number of bandpass filters.
The number and location of bandpass filters can be chosen from this paper: https://asa.scitation.org/doi/pdf/10.1121/1.419603
Where in Table I you can find the frequencies and in Table II you can find the bandwidth.
Choose one specific number of channels, and if you have time experiment and test the differences with a different amount of channels.

### Hearing Loss Simulator

Typical hearing loss occurs with a reduced sensibility to high frequencies. Can you build an hearing loss simulator and can you assess when different input signals become less intelligible with different degrees of hearing loss?
Use this: Gunnar, A. (1974). Methods for assessing high frequency hearing loss in every-day listening situations. Acta Oto-Laryngologica, 77(sup320), 1-50. Chapter 1 for reference.

### Sound Localization

Sound localization depends on cues provided by both ears. A person who has hearing loss in only one year would have difficulties in localising a sound. How would you simulate this phenomenon?
The normal ears utilize the interaural time difference (ITD) and the interaural level difference (ILD) cues to localize sounds presented to the sides. However, these natural interaural differences could be altered with the use of a wide dynamic range compression (WDRC) hearing aid. In the case where a sound originates from one side (say, right), the same sound would appear at a much lower intensity level at the opposite ear (left), brought about by the head-shadow effect. This natural difference in intensity level signals the location of the sound.
When a pair of hearing aids that provide linear processing is worn, the same gain is applied to both ears. This preserves the inter-aural level difference. A WDRC hearing aid provides less gain to the louder sound but more gain to the softer sound (the opposite ear). This will reduce the interaural level difference between ears and could affect the accuracy of sound localization to the sides of the listener.

### Can you simulate this phenomenon?

The components of a hearing aid (including the DSP chip) could introduce delay to the processed signal. The impact of the delay is minimal if the extent of the delay is identical between ears. However, if the delay is different between the two ears, the time of arrival (or phase) will be different, and that may result in a disruption of the localization cues.
Can you simulate this phenomenon?

## Content of This Repository

This repository will be used as an interface between the students and the instructors throughout the workshop. Code examples studied in class will be posted here.
