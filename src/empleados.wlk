    // galvan:
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
    //	var property sueldo = 15000

object galvan 
{
	var sueldo = 15000
	var dinero = 0
	method sueldo() { return sueldo }
	method cobrarSueldo() 
	{
		/* 
		   var aDescontar
		
		dinero = dinero + sueldo
		
		aDescontar = deuda.min(dinero)
		deuda = deuda - aDescontar()
		dinero = dinero - aDescontar 
		*/
		dinero = dinero + sueldo
		
		if(dinero >= deuda)
		{
			dinero = dinero - deuda
			deuda = 0
		}
		else 
		{
			deuda = deuda - dinero
			dinero = 0
			
		}
	}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method gastar(cuanto) { dinero - cuanto}
	method totalDeuda() {}
	method totalDinero() {}
	
}

object baigorria 
{
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var totalCobrado = 0
	
	method venderEmpanada() 
	{
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
    method cobrarSueldo() 
    {
    	dinero = dinero + self.sueldo()
    	totalCobrado = totalCobrado + self.sueldo()
    }
	method totalCobrado() = return totalCobrado
	method totalDinero() = return dinero
}
//--------------------------------------------------------------------------------------

object gimenez 
{
	var dinero = 300000
	method dinero() { return dinero }
	
	method pagarA( empleado ) 
	{
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
