# Covariant Mediation Example

This is an example of using covariant mediation through the mapping of interfaces. This example uses the new Robotlegs2 framework (swc included for ease of use)


## Overview

This example shows how to dynamically create mediators for each interface that a view implements. This allows us to use multiple mediators for a given view, allowing for a single responsibility type approach(SOLID).


## Mapping 

The appConfig.as maps 2 interfaces to 2 mediators:

	 mediatorMap.map( IStatusDisplayable ).toMediator( StatusProvider );
	 mediatorMap.map( IScoreDisplayable ).toMediator( ScoreProvider );

When a view is added to stage that implements either of these interfaces, the mediators will be created and injected with the view(cast as the interface).


## Views

The example shows how to use 3 different types of views.

*   mxml view already on stage. 
*   as3 view already on stage.
*   as3 view instantiated after context initialization.

