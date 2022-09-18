 program vinicultores

        implicit none
        real precioK, uva11, uva12, uva01, uva02, sumUva,total
        integer tipo, tam, kg


        write (*,*) "Seleccionar tipo de uva: 1=A ¢ 0=B"
        read(*,*)tipo


        write(*,*) "Seleccionar tama¤o de la uva: 1 ¢ 2 "
        read(*,*)tam


        write(*,*) "Introduce el precio por kg. de la uva: "
        read(*,*)precioK

        if (tipo==1) then
           if(tam==1) then
             uva11 = precioK+0.2
           else
             uva12 = precioK+0.3
           end if
        end if

        if (tipo==0) then
           if(tam==1) then
             uva01 = precioK-0.3
           else
             uva02 = precioK-0.5
           end if
        end if

        sumUva = uva11 + uva12 + uva01 + uva02

        write(*,*) "Costo total por kilo: ", sumUva

        write(*,*) "¨Cu ntos kilos desea comprar?"
        read(*,*)kg

        total = sumUva*kg

        write(*,*)"Costo total: ", total


        pause
        end program vinicultores
