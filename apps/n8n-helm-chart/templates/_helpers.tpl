{{- define "n8n.tenantName" -}}
{{- .Values.tenant.name | default .Values.clientId -}}
{{- end }}

{{- define "n8n.namespace" -}}
tenant-{{ include "n8n.tenantName" . }}
{{- end }}

{{- define "n8n.fullname" -}}
{{ .Values.clientId }}-n8n
{{- end }}

{{- define "n8n.labels" -}}
app: {{ .Values.labels.app }}
clientId: {{ .Values.clientId | quote }}
managedBy: {{ index .Values.labels "managed-by" }}
{{- end }}

{{- define "n8n.selectorLabels" -}}
app: {{ .Values.labels.app }}
clientId: {{ .Values.clientId | quote }}
{{- end }}

{{- define "n8n.baseUrl" -}}
https://{{ .Values.domain }}
{{- end }}
