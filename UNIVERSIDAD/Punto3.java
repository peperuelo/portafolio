package UNIVERSIDAD;
import java.util.*;

public class Punto3 {
		
		public static void main(String[] args) {
		
			
			ArrayList <Empleado> listaEmpleados=new ArrayList <Empleado>();
			
			listaEmpleados.ensureCapacity(20);
			listaEmpleados.add(new Empleado("Juan",22,2900000 ));
			listaEmpleados.add(new Empleado("Camila",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Jose",22,2900000 ));
			listaEmpleados.add(new Empleado("Fabian",22,2900000 ));
			listaEmpleados.add(new Empleado("Fabian",22,2900000 ));
			listaEmpleados.add(new Empleado("Fabian",22,2900000 ));
			listaEmpleados.add(new Empleado("Fabian",22,2900000 ));
			listaEmpleados.add(new Empleado("Fabian",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Jose",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Jose",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			listaEmpleados.add(new Empleado("Andres",22,2900000 ));
			
			for (Empleado e: listaEmpleados) {
				System.out.println(e.dameDatos());
			}
			
			System.out.println(listaEmpleados.size());
		
}
}
		
class Empleado{
		
		

		public Empleado(String nombre, int edad, double salario) {
		
		this.nombre=nombre;
		this.edad=edad;
		this.salario=salario;
		
	}
		
	public String dameDatos() {
		
		return "El empleado se llama "+nombre+", tiene "+edad+" años y tiene un salario de "+salario;
		
	}
	
	private String nombre;
	
	private int edad;
	
	private double salario;
		
	private Object[] arreglo = new Objects[1];
	
	private int tamanho=0;
			
	private void garantizarCapacidad(int nuevaCantidadDeElementos) {
		
		if (nuevaCantidadDeElementos<=arreglo.length) {
			
		} 
		
		else {
			
			if (nuevaCantidadDeElementos<arreglo.length +20){
				nuevaCantidadDeElementos=arreglo.length +20;
			}
			Object [] nuevoArreglo = new Object[nuevaCantidadDeElementos];
			
			for (int i=0; i<tamanho;i++) {
				nuevoArreglo[i]=arreglo[i];
			}
			arreglo=nuevoArreglo;
		}
	}