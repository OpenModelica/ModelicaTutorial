package DynamicOptimization "
  Dynamic Optimization with OpenModelica
  11th International Modelica Conference 2015

  V. Ruge, W. Braun and B. Bachmann
"
  package ObjectFunction
    model MinimizeFinal
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -6.66661}, extent = {{-20, -13.3334}, {20, 26.6666}}, rotation = 0)));
      parameter Real gain(start = 1);
    protected
      Real signal = gain * u annotation(isMayer = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, lineColor = {0, 0, 0}, textString = "minimize signal"), Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, lineColor = {0, 0, 0}, textString = "at the end time point"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, lineColor = {0, 0, 0}, textString = "minimize signal"), Text(origin = {-50, 3.63638}, extent = {{-50, 16.3636}, {150, -63.6364}}, lineColor = {0, 0, 0}, textString = "at the end time point"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end MinimizeFinal;

    model MaximizeFinal
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -6.66661}, extent = {{-20, -13.3334}, {20, 26.6666}}, rotation = 0)));
      parameter Real gain(start = 1);
    protected
      Real signal = -gain * u annotation(isMayer = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "maximize signal"), Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "at the end time point"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "maximize signal"), Text(origin = {-50, 3.63638}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "at the end time point"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end MaximizeFinal;

    model Maximize
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -6.6666}, extent = {{-20, -13.3334}, {20, 26.6666}}, rotation = 0)));
      parameter Real gain(start = 1);
    protected
      Real signal = -gain * u annotation(isLagrange = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "maximize signal"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "maximize signal"), Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end Maximize;

    model Minimize
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -6.66661}, extent = {{-20, -13.3334}, {20, 26.6666}}, rotation = 0)));
      parameter Real gain(start = 1);
    protected
      Real signal = gain * u annotation(isLagrange = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize signal"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize signal"), Text(origin = {-50, 3.63641}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end Minimize;

    model MinimizeDifference
      parameter Real gain(start = 1);
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -20}, extent = {{-20, -80}, {20, -40}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-120, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    protected
      Real signal = gain * (u - u1) ^ 2 annotation(isLagrange = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize difference"), Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize difference"), Text(origin = {-50, 3.63642}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "over the time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end MinimizeDifference;

    model MinimizeDifferenceFinal
      parameter Real gain(start = 1);
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-117, 81}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {-120, -20}, extent = {{-20, -80}, {20, -40}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {-118, -60}, extent = {{-17, -17}, {17, 17}}, rotation = 0), iconTransformation(origin = {-120, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    protected
      Real signal = gain * (u - u1) ^ 2 annotation(isMayer = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 3.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "at the end time"), Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize difference"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-50, 43.6364}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "minimize difference"), Text(origin = {-50, 3.63641}, extent = {{-50, 16.3636}, {150, -63.6364}}, textString = "at the end time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end MinimizeDifferenceFinal;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end ObjectFunction;

  package Constraints
    model Band
      parameter Real MaxValue(start = 1e120);
      parameter Real MinValue(start = -1e120);
      parameter Real gain(start = 1);
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = MinValue, max = MaxValue) = gain * u annotation(isConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = "u_min <= u(t) <= u_max"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = "u_min <= u(t) <= u_max"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end Band;

    model BandFinal
      parameter Real MaxValue(start = 1e120);
      parameter Real MinValue(start = -1e120);
      parameter Real gain(start = 1);
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = MinValue, max = MaxValue) = gain * u annotation(isFinalConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = "u_min <= u(stopTime) <= u_max"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = "u_min <= u(stopTime) <= u_max"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end BandFinal;

    model GreaterEqual
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    protected
      Real con(max = 0) = gain * (u - u1) annotation(isConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " <= "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " <= "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end GreaterEqual;

    model LessEqual
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = 0) = gain * (u - u1) annotation(isConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " >= "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " >= "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end LessEqual;

    model Equal
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.7142}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = 0, max = 0) = gain * (u - u1) annotation(isConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " == "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " == "), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end Equal;

    model GreaterEqualFinal
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(max = 0) = gain * (u - u1) annotation(isFinalConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " <= "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " <= "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end GreaterEqualFinal;

    model LessEqualFinal
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, 0}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.7142}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = 0) = gain * (u - u1) annotation(isFinalConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " >= "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " >= "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end LessEqualFinal;

    model EqualFinal
      parameter Real gain(start = 1, min = 0);
      Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(visible = true, transformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {120, -1.77636e-15}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
      Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 5.71421}, extent = {{-20, -25.7142}, {20, 14.2858}}, rotation = 0)));
    protected
      Real con(min = 0, max = 0) = gain * (u - u1) annotation(isFinalConstraint = true);
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " == "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {0, 0}, extent = {{-100, 40}, {100, -40}}, textString = " == "), Text(origin = {0, -50}, extent = {{-100, 10}, {100, -10}}, textString = "at stop time"), Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 255})}));
    end EqualFinal;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Constraints;

  package Examples "Lotka Volterra fishing problem:
                                                              optimal fishing strategy
                                                              see: http://mintoc.de/index.php/Lotka_Volterra_fishing_problem
                                                              "
    package LotkaVolterraFishingProblem
      model baseModel
        Real x1(start = 0.5, fixed = true) "biomasses of prey";
        Real x2(start = 0.7, fixed = true) "biomasses of predator";
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        der(x1) = x1 - x1 * x2 - 0.4 * x1 * u;
        der(x2) = (-x2) + x1 * x2 - 0.2 * x2 * u;
        annotation(experiment(StopTime = 12, Tolerance = 1e-8), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics));
      end baseModel;

      model opt1
        DynamicOptimization.ObjectFunction.Minimize minimize1 annotation(Placement(visible = true, transformation(origin = {60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression1(y = (BaseModel.x1 - 1) ^ 2 + (BaseModel.x2 - 1) ^ 2) annotation(Placement(visible = true, transformation(origin = {-40, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(realexpression1.y, minimize1.u) annotation(Line(points = {{-18, 80}, {36, 80}}, color = {0, 0, 127}));
        connect(u, BaseModel.u) annotation(Line(points = {{-50, 30}, {-50, 30}, {58, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt1;

      model opt2
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-84, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DynamicOptimization.ObjectFunction.MinimizeFinal minimizefinal1 annotation(Placement(visible = true, transformation(origin = {60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression1(y = (BaseModel.x1 - 5) ^ 2 + (BaseModel.x2 - 3) ^ 2) annotation(Placement(visible = true, transformation(origin = {-42, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(realexpression1.y, minimizefinal1.u) annotation(Line(points = {{-20, 80}, {36, 80}}, color = {0, 0, 127}));
        connect(u, BaseModel.u) annotation(Line(points = {{-50, 30}, {58, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt2;

      model opt3
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-84, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {72, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression2(y = 0) annotation(Placement(visible = true, transformation(origin = {40, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression1(y = (BaseModel.x1 - 5) ^ 2 + (BaseModel.x2 - 3) ^ 2) annotation(Placement(visible = true, transformation(origin = {-40, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        DynamicOptimization.Constraints.EqualFinal equalfinal1 annotation(Placement(visible = true, transformation(origin = {60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(realexpression1.y, equalfinal1.u) annotation(Line(points = {{-18, 80}, {36, 80}}, color = {0, 0, 127}));
        connect(realexpression2.y, equalfinal1.u1) annotation(Line(points = {{62, 20}, {100, 20}, {100, 80}, {84, 80}}, color = {0, 0, 127}));
        connect(u, BaseModel.u) annotation(Line(points = {{-50, -10}, {-48, -10}, {60, -10}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt3;

      model opt4
        Real pop(min = 0, max = 2.5) = BaseModel.x1 + BaseModel.x2;
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-84, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(u, BaseModel.u) annotation(Line(points = {{-70, 30}, {-52, 30}, {58, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt4;

      model opt4_1
        Real pop = BaseModel.x1 + BaseModel.x2;
        Modelica.Blocks.Interfaces.RealInput u(min = 0, max = 1, start = 1) annotation(Placement(visible = true, transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-84, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression1(y = pop) annotation(Placement(visible = true, transformation(origin = {-60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        DynamicOptimization.Constraints.Band band1(MaxValue = 2.5, MinValue = 0.0) annotation(Placement(visible = true, transformation(origin = {60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(realexpression1.y, band1.u) annotation(Line(points = {{-38, 80}, {36, 80}}, color = {0, 0, 127}));
        connect(u, BaseModel.u) annotation(Line(points = {{-70, 30}, {58, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt4_1;

      model opt5
        Modelica.Blocks.Interfaces.RealInput u(min = -2, max = 2, start = -1) annotation(Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-84, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DynamicOptimization.Examples.LotkaVolterraFishingProblem.baseModel BaseModel annotation(Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Sources.RealExpression realexpression1(y = (u ^ 2 - 1) ^ 2) annotation(Placement(visible = true, transformation(origin = {-60, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
        DynamicOptimization.ObjectFunction.Minimize minimize1 annotation(Placement(visible = true, transformation(origin = {40, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      equation
        connect(realexpression1.y, minimize1.u) annotation(Line(points = {{-38, 80}, {16, 80}}, color = {0, 0, 127}));
        connect(u, BaseModel.u) annotation(Line(points = {{-50, 30}, {-42, 30}, {58, 30}}, color = {0, 0, 127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2, 2}), graphics), experiment(StopTime = 12, Tolerance = 1e-8));
      end opt5;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end LotkaVolterraFishingProblem;

    package LeeRamirezBioreactor " see: Dynamic optimization of chemical and biochemical processes using restricted second-order information 2001,
                                                                                                                                       Eva Balsa-Canto, Julio R. Banga, Antonio A. Alonso Vassilios S. Vassiliadis 
                                                                                                                                      "
      model base_model
        input Real u1(min = 0, max = 1, start = 1);
        input Real u2(min = 0, max = 1, start = 1);
        Real x1(min = -1, max = 10, start = 1, fixed = true);
        Real x2(min = -1, max = 10, start = 0.1, fixed = true);
        Real x3(min = 10, max = 50, start = 40, fixed = true);
        Real x4(min = -1, max = 10, start = 0, fixed = true);
        Real x5(min = -1, max = 10, start = 0, fixed = true);
        Real x6(min = -1, max = 10, start = 1, fixed = true);
        Real x7(min = -1, max = 10, start = 0, fixed = true);
        Real g1, g2, g3;
        Real t1, t2, t3;
        parameter Real c1 = 100;
        parameter Real c2 = 0.51;
        parameter Real c3 = 4.0;
      equation
        t1 = 14.35 + x3 + x3 ^ 2 / 111.5;
        t2 = 0.22 + x5;
        t3 = x6 + 0.22 ./ t2 * x7;
        g1 = x3 / t1 * t3;
        g2 = 0.233 * x3 / t1 * (0.0005 + x5) / (0.022 + x5);
        g3 = 0.09 * x5 / (0.034 + x5);
        der(x1) = u1 + u2;
        der(x2) = g1 * x2 - (u1 + u2) * x2 / x1;
        der(x3) = u1 / x1 * c1 - (u1 + u2) * x3 / x1 - g1 * x2 / c2;
        der(x4) = g2 * x2 - (u1 + u2) * x4 / x1;
        der(x5) = u2 * c3 / x1 - (u1 + u2) * x5 / x1;
        der(x6) = -g3 * x6;
        der(x7) = g3 * (1 - x7);
      end base_model;

      model opt
        DynamicOptimization.ObjectFunction.Minimize cost(u = -u2);
        DynamicOptimization.ObjectFunction.MinimizeFinal costFinal(u = x4 * x1);
        extends DynamicOptimization.Examples.LeeRamirezBioreactor.base_model;
        annotation(experiment(StopTime = 10, Tolerance = 1e-8), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end opt;

      model opt2
        DynamicOptimization.ObjectFunction.Minimize cost(u = -u2);
        DynamicOptimization.ObjectFunction.MinimizeFinal costFinal(u = x4 * x1);
        extends DynamicOptimization.Examples.LeeRamirezBioreactor.base_model;
        annotation(experiment(StopTime = 10, Tolerance = 1e-8), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end opt2;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end LeeRamirezBioreactor;

    package comparison
      model test "
                                                                                                                        see: Optimal contrl of odes and daes, Matthias Gerdts, p.291
                                                                                                                        "
        Real cost = (-2 * x) + 3 * u annotation(isLagrange = true);
        Real x(start = 5, fixed = true);
        input Real u(min = 0, max = 2);
        /*true solution*/
        Real x1 = 7 * exp(time) + (if time <= 2 - log(5 / 2) then -2 else -5 * exp(time - 2));
        Real u1 = if time <= 2 - log(5 / 2) then 2 else 0;
      equation
        der(x) = x + u;
        annotation(experiment(StopTime = 2, Tolerance = 1e-8));
      end test;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end comparison;
  end Examples;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), uses(Modelica(version = "4.1.0")));
end DynamicOptimization;