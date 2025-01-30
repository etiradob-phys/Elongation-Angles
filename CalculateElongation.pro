function CalculateElongation, r_sta_pos, r_sta_sun, r_sun_pos

; ______________________________________________________________________________

program = 'CalculateElongation.pro'

cos_elongation = (((r_sta_pos)^2 + (r_sta_sun)^2 - (r_sun_pos)^2) / (2.0 * r_sta_pos * r_sta_sun))
cos_elongation = MIN([1.0, MAX([-1.0, cos_elongation])])
elongation = ACOS(cos_elongation)
elongation = elongation * (180.0 / !PI)

RETURN, elongation

; ______________________________________________________________________________
; ______________________________________________________________________________

END
