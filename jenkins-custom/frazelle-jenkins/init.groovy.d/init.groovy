#!groovy

/*
 * This script is designated for the init.groovy.d 
 * directory to be executed at startup time of the 
 * Jenkins instance. This script requires the jobDSL
 * Plugin.
 */

import javaposse.jobdsl.dsl.DslScriptLoader
import javaposse.jobdsl.plugin.JenkinsJobManagement
import jenkins.model.Jenkins

// Create the configuration pipeline from a jobDSL script
def jobDslScript = new File('/var/jenkins_home/dsl/ConfigurationAndSeedingPipelineDSL.groovy')
def workspace = new File('.')
def jobManagement = new JenkinsJobManagement(System.out, [:], workspace)
new DslScriptLoader(jobManagement).runScript(jobDslScript.text)
