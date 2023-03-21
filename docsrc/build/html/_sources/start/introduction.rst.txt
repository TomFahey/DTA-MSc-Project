Introduction
============

.. _start_intro_dta:

Differential Thermal Analysis
-----------------------------

Differential thermal analysis (DTA) is a thermal analysis technique that involves measuring
the difference in temperature between a material of interest (the *sample*) and an inert
reference material (the *reference*), as both are heated/cooled under identical, controlled conditions.

Materials, when heated, will undergo phase transitions at certain temperatures, that are characteristic of the given
material's underlying chemical structure. A common example of this is the melting point of ice, at 0°C, as well as
the boiling point of water, at 100°C, shown in the figure below [1]_:

.. figure:: /images/WaterPhaseTransitions.png
   :align: center
   :width: 500px

We can see that at the melting and boiling point transitions, there are large changes in the temperature-enthalpy curve -
shown by the horizontal sections - due to the *latent heat*, which must be overcome before the temperature begins to rise 
again. This can be seen on a DTA curve as a temporary peak (or trough) in the temperature difference between the sample 
and reference.

When plotted as a function of the sample's temperature, one can evaluate both the temperature at which a phase transition occurs,
as well as the enthalpy of the transition, by accounting for the heat capacities of the sample and
reference.

.. _start_intro_instrument:

DTA Instrument
--------------

The typical construction of a DTA instrument is shown in the figure below.

.. figure:: /images/DTAInstrumentDiagram.png
   :align: center
   :width: 500px

   **Basic features of a DTA instrument**

The sample and reference are placed in heating pans and heated by a furnace, following a programmed temperature profile.
A differential thermocouple measures the temperature difference between the sample and reference, with an additional
thermocouple measuring the temperature of the reference, resulting in a temperature profile typical of that shown below:

.. figure:: /images/DTACurve.png
   :align: center
   :width: 500px

   **Temperature profile of sample and reference, during heating run**

.. rubric:: References

.. [1] https://commons.wikimedia.org/wiki/File:Energy_through_phase_changes.png 