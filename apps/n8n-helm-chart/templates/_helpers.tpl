{{- define "n8n.namespace" -}}
tenant-{{ .Values.clientId }}
{{- end }}

{{- define "n8n.fullname" -}}
{{ .Values.clientId }}-n8n
{{- end }}

{{- define "n8n.labels" -}}
app: {{ .Values.labels.app }}
clientId: {{ .Values.clientId }}
managedBy: {{ index .Values.labels "managed-by" }}
{{- end }}

{{- define "n8n.selectorLabels" -}}
app: {{ .Values.labels.app }}
clientId: {{ .Values.clientId }}
{{- end }}

{{- define "n8n.baseUrl" -}}
https://{{ .Values.domain }}
{{- end }}
