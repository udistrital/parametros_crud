package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: "/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: "/:id",
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:AreaTipoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: "/:id",
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: "/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"],
        beego.ControllerComments{
            Method: "Put",
            Router: "/:id",
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: "/:id",
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: "/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: "/:id",
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:ParametroPeriodoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: "/:id",
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: "/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: "/:id",
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:PeriodoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: "/:id",
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"],
        beego.ControllerComments{
            Method: "Post",
            Router: "/",
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: "/",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: "/:id",
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"],
        beego.ControllerComments{
            Method: "Put",
            Router: "/:id",
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"] = append(beego.GlobalControllerRouter["github.com/udistrital/parametros_crud/controllers:TipoParametroController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: "/:id",
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
