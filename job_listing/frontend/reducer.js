const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
      case 'SWITCH_LOCATION':
          return state.city = action.city;
    default:
      return state;
  }
};

export default reducer;
