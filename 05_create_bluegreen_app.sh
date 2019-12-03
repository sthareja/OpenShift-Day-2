#!/bin/bash
# JBoss, Home of Professional Open Source
# Copyright 2016, Red Hat, Inc. and/or its affiliates, and individual
# contributors by the @authors tag. See the copyright.txt in the
# distribution for a full listing of individual contributors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
oc new-project bluegreen-deployment-demo
oc new-app openshift/deployment-example --name=bluegreen-example-old
oc new-app openshift/deployment-example:v2 --name=bluegreen-example-new
oc expose svc/bluegreen-example-old --name=bluegreen-example
oc get routes
echo "Go to route. Created route for V1 bluegreen-example-old"
