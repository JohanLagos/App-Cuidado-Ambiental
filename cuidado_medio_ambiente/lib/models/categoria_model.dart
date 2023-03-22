import 'package:equatable/equatable.dart';

class Categoria extends Equatable {
  final String nombre;
  final String imagenUrl;

  const Categoria({
    required this.nombre,
    required this.imagenUrl,
  });

  @override
  List<Object?> get props => [nombre, imagenUrl];

  static List<Categoria> categorias = [
    const Categoria(
      nombre: "Juan Camilo Lopez",
      imagenUrl:
          "https://us.123rf.com/450wm/goodstudio/goodstudio2005/goodstudio200500104/147010513-estudiante-masculino-sonriente-sentado-en-el-escritorio-escribiendo-ilustraci%C3%B3n-plana-de-vector-de.jpg?ver=6",
    ),
    const Categoria(
      nombre: "Maria Alejandra Martinez",
      imagenUrl:
          "https://us.123rf.com/450wm/goodstudio/goodstudio2005/goodstudio200500105/146773281-estudiante-de-mente-seria-que-se-prepara-para-el-examen-de-lectura-de-libros-vectoriales-ilustraci%C3%B3n.jpg?ver=6",
    ),
    const Categoria(
      nombre: "Jhonatan Benavidez",
      imagenUrl:
          "https://us.123rf.com/450wm/fedrunovan/fedrunovan2006/fedrunovan200600017/149566642-hombre-independiente-con-gafas-en-el-escritorio-con-port%C3%A1til.jpg?ver=6",
    ),
    const Categoria(
        nombre: "Johan Esteban Lagos",
        imagenUrl:
            "https://img.freepik.com/vector-premium/hombre-escritorio-libro-lectura-masculino-estudiante-adulto-prepara-examen-auto-educacion-hogar-vida-periodo-aislamiento-profesor-o-profesor-tutoriales-ilustracion-vectorial-estudiante-adulto-libro_53562-13195.jpg"),
  ];
}
