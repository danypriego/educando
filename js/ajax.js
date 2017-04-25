var ajax = new Object();
	ajax.READY_STATE_UNINITIALIZED=0;
	ajax.READY_STATE_LOADING=1;
	ajax.READY_STATE_LOADED=2;
	ajax.READY_STATE_INTERACTIVE=3;
	ajax.READY_STATE_COMPLETE=4;

	ajax.CargadorContenidos = function(url,funcion,funcionError, metodo, parametros, contentType) {
		this.url = url;
		this.parametros = parametros;
		this.peticion_http = null;
		this.onload = funcion;
		this.onerror = (funcionError) ? funcionError : this.defaultError;
		this.cargaContenidoXML(url,metodo,parametros,contentType);
	}
	ajax.CargadorContenidos.prototype = {
		cargaContenidoXML: function(url,metodo,parametros,contentType) {
			if(window.XMLHttpRequest) {
				this.peticion_http = new XMLHttpRequest();
			}
			else if(window.ActiveXObject) {
				this.peticion_http = new ActiveXObject("Microsoft.XMLHTTP") 
			}

			if (this.peticion_http) {
				try {
					var loader = this;
					this.peticion_http.onreadystatechange = function() {
						loader.onReadyState.call(loader);
					}
					
					if(contentType) {
						this.peticion_http.open(metodo,url,true);
						this.peticion_http.setRequestHeader("Content-Type", contentType);
						this.peticion_http.send(parametros);
					}
					else if (!contentType && !parametros)
					{
						this.peticion_http.open(metodo,url,true);
						this.peticion_http.send(null);
					}
					else
					{
						this.peticion_http.open(metodo,url,true);
						this.peticion_http.send(parametros);
					}
					
				}
				catch (err) {
					this.onerror.call(this);
				}
			}
		},
		onReadyState: function() {
			var peticion_http = this.peticion_http;
			var ready = peticion_http.readyState;
			if (ready == ajax.READY_STATE_COMPLETE) {
				var httpStatus = peticion_http.status;
				if (httpStatus == 200 || httpStatus == 0) {
					this.onload.call(this);
				}
				else {
					this.onerror.call(this);
				}
			}
		},
		defaultError: function() {
			alert("Se ha producido un error al obtener los datos"
			+ "\n\nreadyState:" + this.req.readyState
			+ "\nstatus: " + this.req.status 
			+ "\nheaders: " + this.req.getAllResponseHeaders());
		}
	}