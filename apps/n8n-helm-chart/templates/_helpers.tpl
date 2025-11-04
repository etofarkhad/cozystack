{{- define "n8n.tenantName" -}}
{{- if .Values.tenant.name }}{{ .Values.tenant.name | toString }}{{ else }}{{ .Values.clientId | toString }}{{ end }}
{{- end }}

{{- define "n8n.namespace" -}}
tenant-{{ include "n8n.tenantName" . }}
{{- end }}

{{- define "n8n.fullname" -}}
n8n-{{ .Values.clientId | toString }}
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
