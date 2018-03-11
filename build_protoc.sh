project_base="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#PROTOC_HOME=/usr/local/protobuf-2.5.0/

if [ -d ${project_base}/generated ]; then
	echo "removing contents of ${project_base}/generated"
	rm -r ${project_base}/generated/*
else
	echo "creating directory ${project_base}/generated"
	mkdir ${project_base}/generated
fi

protoc --proto_path=${project_base}/resources --java_out=${project_base}/generated ${project_base}/resources/common.proto

protoc --proto_path=${project_base}/resources --java_out=${project_base}/generated ${project_base}/resources/election.proto

protoc --proto_path=${project_base}/resources --java_out=${project_base}/generated ${project_base}/resources/work.proto

protoc --proto_path=${project_base}/resources --java_out=${project_base}/generated ${project_base}/resources/pipe.proto
