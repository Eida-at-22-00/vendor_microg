# 📦 microG Variant Support for AxionAOSP

This repository adds official support for a **microG variant** in [AxionAOSP](https://github.com/AxionAOSP), enabling users to build ROMs with microG instead of Google Play Services. Ideal for privacy-conscious users who still want push notifications and app compatibility.

---

## 🧩 What's Included

- `microg.mk` for integrating microG into builds
- Prebuilt microG packages:
  - GmsCore
  - GsfProxy
  - FakeStore
  - F-Droid
  - F-Droid Privileged Extension
- Optional `additional_repos.xml` for F-Droid custom repos

---

## ⚙️ Axion GMS Variant Usage

Axion lets you choose a GMS variant using this command:

```bash
axion <device> <build_type> <gms_variant>
```

### Example:

```bash
axion sweet user microg
```

Available variants:
- `pico`
- `core`
- `microg` ✅ (added by this repo)

---

## 🔀 Integration into Build System

Support is added through a patch to `vendor/lineage/config/common.mk`:

refer to this commit: [`5b7b7d42e4`](https://github.com/Eida-at-22-00/vendor_lineage/commit/5b7b7d42e448a4da4309a30ca1cb72858d500162)

---

This:
- Clones this repo into `vendor/microg`
- Applies the patch that enables `WITH_GMS_VARIANT := microg`

---

## ✅ Requirements

- `WITH_GMS := true` must be defined in your device tree or build config
- `WITH_GMS_VARIANT := microg` must be set in your environment
- Your ROM must support **signature spoofing**
