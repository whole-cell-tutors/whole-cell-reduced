"""
Simulation of the combined toy model consisting of FBA and kinetic submodels.
Using FBA simulator & kinetic simulator to simulate submodels with
synchronization between the partial simulations.

Simulating the model.

TODO: Fix the zero time point of the simulation

@author: Matthias Koenig
"""
import roadrunner
import cobra
from fba.cobra.cobra_tools import print_flux_bounds

print roadrunner.__version__
print cobra.__version__

#################################
# load ode and fba model
#################################
from toymodel_settings import fba_file, comp_file

# fba model
cobra_fba = cobra.io.read_sbml_model(fba_file)
# ode model
rr_comp = roadrunner.RoadRunner(comp_file)
sel = ['time'] \
        + ["".join(["[", item, "]"]) for item in rr_comp.model.getBoundarySpeciesIds()] \
        + ["".join(["[", item, "]"]) for item in rr_comp.model.getFloatingSpeciesIds()] \
        + rr_comp.model.getReactionIds()
rr_comp.timeCourseSelections = sel
rr_comp.reset()

def simulate(tend=10, step_size=0.01, debug=True):

    # store results
    all_results = [] 
    all_time = []

    time = 0.0
    while time <= tend:
        if debug:
            print "-" * 80
            print "Time: {}".format(time)
        
        # --------------------------------------
        # FBA
        # --------------------------------------
        # set bounds in cobra model
        cobra_R1 = cobra_fba.reactions.get_by_id("R1")
        cobra_R1.upper_bound = rr_comp.submodel_bounds__ub_R1
        
        # optimize
        cobra_fba.optimize()

        # set solution fluxes in rr_comp
        # constant fluxes
        for (rid, flux) in cobra_fba.solution.x_dict.iteritems():
            pid = "submodel_update__v_{}".format(rid)
            rr_comp[pid] = flux
            
        if debug:
            print_flux_bounds(cobra_fba)
            print cobra_fba.solution.status
            print cobra_fba.solution.x_dict
            print "-" * 80
        # --------------------------------------
        # ODE
        # --------------------------------------
        # simulate (1 step)
        if step_size:
            # constant step size
            result = rr_comp.simulate(0, end=step_size, steps=1)
        else:
            # variable step size
            result = rr_comp.simulate(0, steps=1, variableStep=True)
        
        # store results
        all_results.append(result[1])
        all_time.append(time)
        
        # store simulation values & get time step
        delta_time = result['time'][1]
        time = time + delta_time
        
        if debug:        
            print result

    # create result matrix    
    import pandas
    df = pandas.DataFrame(data=all_results, columns=result.colnames)    
    df.time = all_time
    print df
    return df

if __name__ == "__main__":
    
    df1 = simulate(tend=50.0, step_size=0.01, debug=False)
    rr_comp.reset()
    # df2 = simulate(tend=10.0, step_size=None, debug=False)
    
    df1.columns
    df1.plot(x="time", y=["submodel_update__R1",
                         "submodel_update__R2",
                         "submodel_update__R3",
                         "submodel_model__R4"])
    df1.plot(x="time", y=["[submodel_update__A]",
                         "[submodel_update__B1]",
                         "[submodel_update__B2]",
                         "[C]",
                         "[submodel_model__D]"])

    # TODO: create figures

