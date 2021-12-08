// Copyright (C) 2021 Storj Labs, Inc.
// See LICENSE for copying information.

package deferloop

import (
	"testing"

	"golang.org/x/tools/go/analysis/analysistest"
)

func Test(t *testing.T) {
	testdata := analysistest.TestData()
	analysistest.Run(t, testdata, Analyzer, "a")
}
