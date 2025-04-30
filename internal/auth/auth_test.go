package auth

import (
	"net/http"
	"testing"
)

func TestGetAPIKey(t *testing.T) {
	header1 := http.Header{}
	header1.Set("Authorization", "ApiKey 12345")
	header2 := http.Header{}
	header3 := http.Header{}
	header3.Set("Authorization", "12345")

	type compare struct {
		string string
		err    error
	}

	tests := []struct {
		input  http.Header
		output string
		error  error
		desc   string
	}{
		{
			input:  header1,
			output: "12345",
			error:  nil,
			desc:   "Test valid header",
		},
		{
			input:  header2,
			output: "",
			error:  ErrNoAuthHeaderIncluded,
			desc:   "Test invalid header",
		},
		{
			input:  header3,
			output: "",
			error:  ErrMalformedAuthHeader,
			desc:   "Test malformed auth header",
		},
	}

	for _, test := range tests {
		want := compare{
			string: test.output,
			err:    test.error,
		}
		out, err := GetAPIKey(test.input)
		got := compare{
			string: out,
			err:    err,
		}
		if want != got {
			t.Fatalf("%s\n Want: %v, Got: %v", test.desc, want, got)
		}
	}

}
