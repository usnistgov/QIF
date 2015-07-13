DROP TABLE IF EXISTS ActualPoint;
CREATE TABLE ActualPoint (
	index  SERIAL PRIMARY KEY,
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	xCombinedUncertainty text NOT NULL,-- attribute
	xMeanError text NOT NULL,-- attribute
	yCombinedUncertainty text NOT NULL,-- attribute
	yMeanError text NOT NULL,-- attribute
	zCombinedUncertainty text NOT NULL,-- attribute
	zMeanError text NOT NULL,-- attribute
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	Point DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

DROP TABLE IF EXISTS Point;
CREATE TABLE Point (
	index  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	PointSimple DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;


