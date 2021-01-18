// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/udistrital/parametros_crud/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/parametro",
			beego.NSInclude(
				&controllers.ParametroController{},
			),
		),

		beego.NSNamespace("/periodo",
			beego.NSInclude(
				&controllers.PeriodoController{},
			),
		),

		beego.NSNamespace("/parametro_periodo",
			beego.NSInclude(
				&controllers.ParametroPeriodoController{},
			),
		),

		beego.NSNamespace("/tipo_parametro",
			beego.NSInclude(
				&controllers.TipoParametroController{},
			),
		),

		beego.NSNamespace("/area_tipo",
			beego.NSInclude(
				&controllers.AreaTipoController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
