
#datos en horas invertidas en actividades de la matriz de la semana 

dias <- c("lunes", "martes", "miercoles", "jueves", "viernes", 
          "sábado", "domingo")
natacion <- c(0, 2, 2, 0, 2, 0, 0)
macroinv <- c(7, 0, 0, 0, 0, 0, 0)
ornito <- c(1, 0, 0, 0, 2, 0, 2)
topograf <- c(2, 0, 0, 3, 3, 3, 2)
restauracion <- c(3, 0, 2, 0, 0, 0, 2)
R_bio <- c(1, 5, 2, 0, 3, 0, 2)
machine <- c(0, 0, 1, 0, 2, 2, 0)
ingles <- c(0, 1, 0, 0, 0, 0, 0)
fisica <- c(0, 3, 4, 2, 2, 6, 4)
csuelo <- c(0, 2, 2, 4, 0, 0, 2)
dormir <- c(8, 7, 6, 9, 5, 7, 7)
a_t <- c(2, 2, 3, 4, 4, 0, 0)

dia <- 24
sem <- 24*7
mes <- 24*7*4


actividades <- c(natacion, macroinv, ornito, topograf, restauracion, R_bio, machine, ingles, fisica, csuelo, dormir, a_t)
actividades2 <- c("natacion", "macroinv", "ornito", "topograf", "restauracion", "R_bio", "machine", "ingles", 
                  "fisica", "csuelo", "dormir", "a_t")
semana <- matrix(actividades, byrow = TRUE, ncol = 7)
semana

#formando la matriz de la semana
colnames(semana) <- dias
rownames(semana) <- actividades2
semana

#para saber cuanto le invierto a cda actividad por semana
niidea <- rowSums(semana)
niidea
activ_almes <- niidea*4
activ_almes

#cada actividad por mes
activmes_porcien <- (activ_almes/672)*100
activmes_porcien

#esto para saber que porcentaje de hocio puedo tnener cada día
hstudpordia <- colSums(semana)
hstudpordia

#horas invertidas solo en academia
sem_academica <- semana[2:10,1:7]
sem_academica

#horas invertidas en la academia diariamente
dia_acad <- colSums(sem_academica)
dia_acad

#porcentaje de horas invertidas en academia

diaporcentacad <- (dia_acad/dia)*100
diaporcentacad

#porcentaje de horas al mes invertidas en academia

porcentmesacad <- (dia_acad/mes)*100
porcentmesacad

#academia al mes

acadmes <- dia_acad*4
acadmes

poracad <- (acadmes/mes)*100
poracad

#horas invertidas en lo no académico
noacad <- semana[11:12, 1:7]
noacad

dianoacad <- colSums(noacad)
dianoacad
#en la semana
noacadsemana <- rowSums(noacad)
noacadsemana

#porcentaje a la semana
porcentnoacad <- (noacadsemana/sem)*100
porcentnoacad
