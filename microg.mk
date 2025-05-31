ifeq ($(WITH_GMS),true)
PRODUCT_SOONG_NAMESPACES += \
    vendor/microg

ifeq ($(WITH_GMS_VARIANT),microg)
PRODUCT_PACKAGES += \
	GmsCore \
	GsfProxy \
	FakeStore \
	IchnaeaNlpBackend \
	NominatimGeocoderBackend \
	FDroid \
	FDroidPrivilegedExtension \
	additional_repos.xml
endif

endif
