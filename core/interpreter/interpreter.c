#include "interpreter.h"
#include "state_idle.h"

typedef struct {
    const state_t *currentState;  // Binding to the current state
} context_t;


static context_t Context= {
    .currentState=&StateIdleText
};

void INTERPRETER_ProcessInput(const char* chr){
    Context.currentState->processInput(&Context.currentState,chr);
}
