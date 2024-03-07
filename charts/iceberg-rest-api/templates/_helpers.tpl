{{- define "fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Define the nodeSelector for airflow pods
EXAMPLE USAGE: {{ include "airflow.nodeSelector" (dict "Release" .Release "Values" .Values "nodeSelector" $nodeSelector) }}
*/}}
{{- define "rosecape.podNodeSelector" }}
{{- .nodeSelector | default .Values.defaultNodeSelector | toYaml }}
{{- end }}

{{/*
Define the Affinity for airflow pods
EXAMPLE USAGE: {{ include "airflow.podAffinity" (dict "Release" .Release "Values" .Values "affinity" $affinity) }}
*/}}
{{- define "rosecape.podAffinity" }}
{{- .affinity | default .Values.defaultAffinity | toYaml }}
{{- end }}

{{/*
Define the Tolerations for airflow pods
EXAMPLE USAGE: {{ include "airflow.podTolerations" (dict "Release" .Release "Values" .Values "tolerations" $tolerations) }}
*/}}
{{- define "rosecape.podTolerations" }}
{{- .tolerations | default .Values.defaultTolerations | toYaml }}
{{- end }}