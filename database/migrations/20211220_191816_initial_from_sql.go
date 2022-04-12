package main

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/migration"
	"github.com/astaxie/beego/orm"
)

// DO NOT MODIFY
type InitialFromSql_20211220_191816 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &InitialFromSql_20211220_191816{}
	m.Created = "20211220_191816"

	migration.Register("InitialFromSql_20211220_191816", m)
}

type dbSchema struct {
	SchemaName string
}

// Run the migrations
func (m *InitialFromSql_20211220_191816) Up() {
	o := orm.NewOrm()
	var names []dbSchema
	rows, err := o.Raw("SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'parametros'").QueryRows(&names)
	if err != nil {
		panic(err)
	}
	logs.Info(names)
	if rows != 0 {
		return
	}

	file, err := ioutil.ReadFile("../scripts/20211220_191816_initial_from_sql.up.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";\n")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}
}

// Reverse the migrations
func (m *InitialFromSql_20211220_191816) Down() {
	m.SQL("DROP SCHEMA IF EXISTS parametros CASCADE")
}
