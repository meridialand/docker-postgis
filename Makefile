build:
	docker build --build-arg="GENERATE_ALL_LOCALE=0" \
        --build-arg="POSTGRES_MAJOR_VERSION=12" \
        --build-arg="POSTGIS_MAJOR_VERSION=3" \
        --build-arg="DISTRO=debian" \
        --build-arg="IMAGE_VERSION=bookworm" \
        --build-arg="BUILD_TIMESCALE=false" \
		--build-arg="POSTGIS_MINOR_RELEASE=3" \
		-t landmapp/postgis:12.3-3 .
	docker push landmapp/postgis:12.3-3