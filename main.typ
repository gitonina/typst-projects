// Formulario Cinematica

#import "config.typ": conf
#import "shortcuts.typ": vv, norm
#show: conf

#align(center)[
  #stack(
    dir: ttb,
    spacing: 0.35em,
    text(size: 10pt)[Formularios de ],
    text(size: 10pt)[Mecanica],
  )
]
#line(length: 100%, stroke: 0.6pt)
#v(0.3em)

#columns(2)[
= 1 Cinemática

- *[Vector posición]*: El vector $vv(r)$ indica la ubicación de una partícula $P$ respecto a un origen $O$. No está anclado a $O$; solo importan su magnitud y dirección.

- *[Base cartesiana]*: $hat(i), hat(j), hat(k)$ son fijos en el tiempo, ortonormales:
  $ hat(i) dot hat(j) = hat(j) dot hat(k) = hat(k) dot hat(i) = 0, quad hat(i) dot hat(i) = hat(j) dot hat(j) = hat(k) dot hat(k) = 1 $
  $ vv(r) = x hat(i) + y hat(j) + z hat(k) $

- *[Velocidad y aceleración — definiciones]*:
  $ vv(v)(t) equiv (dif vv(r))/(dif t), quad vv(a)(t) equiv (dif vv(v))/(dif t) $
   En cartesianas : 
  
  $ vv(v) = dot(x) hat(i) + dot(y) hat(j) + dot(z) hat(k), quad vv(a) = dot.double(x) hat(i) + dot.double(y) hat(j) + dot.double(z) hat(k) $



- *[Coordenadas cilíndricas $(rho, phi.alt, z)$]*:
   Relación con cartesianas: $rho = sqrt(x^2+y^2)$, $phi.alt = arctan(y/x)$, $z=z$

  — Inversa: $x = rho cos phi.alt$, $y = rho sin phi.alt$

  Base cilíndrica:
  $ hat(rho) = cos phi.alt thin hat(i) + sin phi.alt thin hat(j), quad hat(phi.alt) = -sin phi.alt thin hat(i) + cos phi.alt thin hat(j) $
   Derivadas de la base (regla de la cadena, $dot(phi.alt) = dif phi.alt\/dif t$):
  $ (partial hat(rho))/(partial phi.alt) = hat(phi.alt), quad (partial hat(phi.alt))/(partial phi.alt) = -hat(rho) $
  Posición: 
  
  $ vv(r) = rho hat(rho) + z hat(k) $
  Velocidad:
  $ vv(v) = dot(rho) hat(rho) + rho dot(phi.alt) hat(phi.alt) + dot(z) hat(k) $
  Aceleración:
  $ vv(a) = (dot.double(rho) - rho dot(phi.alt)^2) hat(rho) + (rho dot.double(phi.alt) + 2 dot(rho) dot(phi.alt)) hat(phi.alt) + dot.double(z) hat(k) $

- *[Coordenadas esféricas $(r, theta, phi.alt)$]*:
  Relación con cartesianas: $r = sqrt(x^2+y^2+z^2)$, $phi.alt = arctan(y/x)$, $theta = arctan(sqrt(x^2+y^2)\/z)$
  
  — Inversa: $x = r sin theta cos phi.alt$, $y = r sin theta sin phi.alt$, $z = r cos theta$
 
  — Relación útil: $rho = r sin theta$
 
  Base esférica:
  $ hat(r) = sin theta cos phi.alt thin hat(i) + sin theta sin phi.alt thin hat(j) + cos theta thin hat(k) $
  $ hat(theta) = cos theta cos phi.alt thin hat(i) + cos theta sin phi.alt thin hat(j) - sin theta thin hat(k) $
  $ hat(phi.alt) = -sin phi.alt thin hat(i) + cos phi.alt thin hat(j) $
  — Además $hat(r) = vv(r)\/r$, y $hat(r) = sin theta thin hat(rho) + cos theta thin hat(k)$, $hat(theta) = cos theta thin hat(rho) - sin theta thin hat(k)$
  
  Posición: $vv(r) = r hat(r)$
  
  Velocidad:
  $ vv(v) = dot(r) hat(r) + r sin theta thin dot(phi.alt) thin hat(phi.alt) + r dot(theta) hat(theta) $
  Aceleración:
  $ vv(a) = (dot.double(r) - r dot(theta)^2 - r sin^2 theta thin dot(phi.alt)^2) hat(r) $
  $ + thin (r dot.double(theta) + 2 dot(r) dot(theta) - r sin theta cos theta thin dot(phi.alt)^2) hat(theta) $
  $ + thin 1/(r sin theta) (dif)/(dif t) (r^2 sin^2 theta thin dot(phi.alt)) thin hat(phi.alt) $

- *[Velocidad angular respecto a un origen $O$]*: Para $vv(r)(t)$ trazando una trayectoria arbitraria,
  $ omega_O = norm(vv(r) times vv(v)) / norm(vv(r))^2 quad "(rapidez angular)" $
  $ vv(omega)_O equiv (vv(r)(t) times vv(v)(t)) / norm(vv(r)(t))^2 quad "(vector velocidad angular)" $
  $vv(omega)_O$ es perpendicular a $vv(r)$ y $vv(v)$; orientación por regla de la mano derecha.

- *[Velocidad angular de un vector arbitrario $vv(A)(t)$]*:
  $ vv(omega)_A equiv 1/norm(vv(A))^2 thin vv(A) times (dif vv(A))/(dif t) $

- *[Derivada de un vector — largo + giro]*: Con $hat(A) = vv(A)\/norm(vv(A))$,
  $ (dif vv(A))/(dif t) = hat(A) (dif)/(dif t) norm(vv(A)) + vv(omega)_A times vv(A) $

  Caso $norm(vv(A))$ constante (cualquier vector unitario):
  $ (dif vv(A))/(dif t) = vv(omega)_A times vv(A), quad (dif vv(A))/(dif t) perp vv(A) $

- *[Vectores tangente, normal y binormal]*:
 
  Tangente:

   $ hat(t) equiv vv(v)\/nu, quad "luego" vv(v) = nu hat(t) $
  
  Normal:
  
   $ hat(n) equiv norm((dif hat(t))/(dif t))^(-1) (dif hat(t))/(dif t) $
  
  Binormal: 
  $ hat(b) equiv hat(t) times hat(n) $
  
  Velocidad angular de $hat(t)$:
  $ vv(omega)_(hat(t)) = hat(t) times (dif hat(t))/(dif t) , quad norm((dif hat(t))/(dif t)) = omega_(hat(t)) 
   (dif hat(t))/(dif t) = omega_(hat(t)) hat(n) $
  Radio de curvatura: 
  
  $ rho_c = nu \/ omega_(hat(t))   $
-  *[Aceleración tangencial-normal]*:
  $ vv(a) = dot(nu) hat(t) + nu^2/rho_c hat(n) $
  $dot(nu)$: aceleración *tangencial* .
 
  $nu^2\/rho_c$: aceleración *centrípeta* .
]

#v(0.4em)
