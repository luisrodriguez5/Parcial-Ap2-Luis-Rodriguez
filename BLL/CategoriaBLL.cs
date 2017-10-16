﻿using DAL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class CategoriaBLL
    {
        public static bool Guardar(Categorias categoria)
        {
            using (var context = new Repository<Categorias>())
            {
                try
                {
                    if (Buscar(p => p.CategoriaId  == categoria.CategoriaId) == null)
                    {
                        return context.Guardar(categoria);
                    }
                    else
                    {
                        return context.Modificar(categoria);
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        public static Categorias Buscar(Expression<Func<Categorias, bool>> criterio)
        {
            using (var context = new Repository<Categorias>())
            {
                try
                {
                    return context.Buscar(criterio);
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        public static bool Eliminar(Categorias categoria)
        {
            using (var context = new Repository<Categorias>())
            {
                try
                {
                    return context.Eliminar(categoria);
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        public static List<Categorias> GetListAll()
        {
            using (var context = new Repository<Categorias>())
            {
                try
                {
                    return context.GetListAll();
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        public static List<Categorias> GetList(Expression<Func<Categorias, bool>> criterio)
        {
            using (var context = new Repository<Categorias>())
            {
                try
                {
                    return context.GetList(criterio);
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }
    }
}
