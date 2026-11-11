function move_towards(p_from,p_to,p_delta){
	if abs(p_to - p_from) <= p_delta {
	    return p_to
	} else {
	    return p_from + sign(p_to - p_from) * p_delta;
	}
}