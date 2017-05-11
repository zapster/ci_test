local Build = {
  name: error "name undefined",
  targets: [],
  capabilities: [],
  packages: {},
  downloads: {},
  environment: {},
  timelimit: error "timelimit undefined",
  setup: [],
  run: [],
  teardown: [],
  on_success: [],
  on_failure: [],
  verbose: false,
  logs: [],
  catch_files: [],
};
{
  builds :  [
    Build + {
      run: [["echo", "test2"]],
      capabilities : ["linux", "amd64", "gate"],
      name: "gate-test-jdk8-linux",
      timelimit: "0:10"
    }
  ]
}
