package com.automaton.task.chain

class StartMeasureLatency implements Executor{

    StartMeasureLatency(Executor next){
        super(next)
    }

    def execute(Map automaton){
        
        if(measureLatency(automaton)){
            
        }

        super.execute(automaton)
    }
}