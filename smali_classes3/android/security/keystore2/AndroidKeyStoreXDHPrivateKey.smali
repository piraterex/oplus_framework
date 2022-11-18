.class public Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreXDHPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/EdECKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 40
    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .locals 1

    .line 45
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
